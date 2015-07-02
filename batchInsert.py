import csv
import time
import logging
import MySQLdb

class CSVParser:
	def __init__(self, csvfile, database):
		self.db = database
		self.fields = None
		self.value_list = None
		self.parse_csv(csvfile)


	def parse_csv(self, filename):
		"""Parses the csv file given

		Args:
			filename: (str) the filename of a csv file.

		Raises:
			None
		"""
		values = []
		with open(filename, "rb") as csvfile:
			data = csv.reader(csvfile)
			for line in data:
				values.append(line)

		self.fields = values[0]
		self.value_list = values[1:]

	def build_query(self, fields, table):
		"""Builds a query for inserting data into the database

		Args:
			fields: (list(str)) The list of fields for the query
			table: (str) The name of the table to insert into

		Raises:
			None
		"""
		arg_count = len(fields)
		arg_string = ','.join(('%s '* arg_count).split())
		field_string = ','.join(fields)
		query = "INSERT INTO {0} ({1}) VALUES ({2})".format(table, field_string, arg_string)
		return query

	def insert_records(self, table):
		"""Builds a query for inserting data into the database

		Args:
			table: (str) The name of the table to insert values into

		Raises:
			Sqlite3.OperationalError
		"""
		cur = self.db.cursor()
		query = self.build_query(self.fields, table)
		logging.warning("Built database query: %s" % query)
		cur.executemany(query, self.value_list)
		self.db.commit()
		logging.warning("Successfully inserted {0} rows into table {1}".format(len(self.value_list), table))


if __name__ == "__main__":
        
        database = MySQLdb.connect(host="localhost",
                                   user="User",
                                   passwd="Password",
                                   db="test_data")
	parser = CSVParser("sm_hourlyDataDummy3.csv", database)
	parser.insert_records('sm_hourlyDataDummy3Structure')
        database.close()


