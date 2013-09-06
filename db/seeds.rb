# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

language_list = [
  { name: 'apollo' },
  { name: 'basic' },
  { name: 'clj' },
  { name: 'css' },
  { name: 'dart' },
  { name: 'erlang' },
  { name: 'go' },
  { name: 'hs' },
  { name: 'lisp' },
  { name: 'llvm' },
  { name: 'lua' },
  { name: 'matlab' },
  { name: 'ml' },
  { name: 'mumps' },
  { name: 'n' },
  { name: 'pascal' },
  { name: 'proto' },
  { name: 'r' },
  { name: 'rd' },
  { name: 'scala' },
  { name: 'sql' },
  { name: 'tcl' },
  { name: 'tex' },
  { name: 'vb' },
  { name: 'vhdl' },
  { name: 'wiki' },
  { name: 'xq' },
  { name: 'yaml' }
]

language_list.each do |record|
  CodeLanguage.create record
end