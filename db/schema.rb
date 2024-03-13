# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_04_064654) do
  create_table "ACCT_MIFID", id: false, force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
  end

  create_table "AIRICP", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.date "ICPDATED01", null: false
  end

  create_table "BAMINI", primary_key: "AGG6", id: { type: :char, limit: 11 }, force: :cascade do |t|
    t.char "AGGACCT", limit: 3, null: false
  end

  create_table "CITY", primary_key: "ID", id: { type: :char, limit: 12 }, force: :cascade do |t|
    t.varchar "PROVINCENAME", limit: 255
  end

  create_table "CUSTODIAN_FEED_STG_HOLD", id: false, force: :cascade do |t|
    t.varchar "ASSET", limit: 12
    t.decimal "QUANTITY", precision: 18, scale: 8
    t.decimal "BOOKCOST", precision: 18, scale: 2
    t.decimal "INCOME", precision: 18, scale: 8
    t.decimal "CGT_IBC", precision: 18, scale: 2
    t.decimal "CGT_SUM_IRG", precision: 18, scale: 2
    t.char "STATUS", limit: 3
    t.char "ASSETCLASS", limit: 3
    t.varchar "NOTES", limit: 50
    t.integer "HOLDCOSTFLAG"
    t.decimal "UNSETTLED", precision: 18, scale: 2
    t.char "TISS_DEPOT", limit: 1
    t.char "CODE", limit: 14
    t.varchar "PORTFOLIO", limit: 13
    t.decimal "ACCRUED_INTEREST_IN_PORT_CCY", precision: 18, scale: 2
    t.decimal "MARKETVALUE", precision: 18, scale: 2
    t.datetime "CREATED_DATE", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "CUSTODIAN_FEED_STG_HOLD_CUST", id: false, force: :cascade do |t|
    t.varchar "ASSET", limit: 12
    t.decimal "QUANTITY", precision: 18, scale: 8
    t.decimal "BOOKCOST", precision: 18, scale: 2
    t.decimal "INCOME", precision: 18, scale: 8
    t.decimal "CGT_IBC", precision: 18, scale: 2
    t.decimal "CGT_SUM_IRG", precision: 18, scale: 2
    t.char "STATUS", limit: 3
    t.char "ASSETCLASS", limit: 3
    t.varchar "NOTES", limit: 50
    t.integer "HOLDCOSTFLAG"
    t.decimal "UNSETTLED", precision: 18, scale: 2
    t.char "TISS_DEPOT", limit: 1
    t.char "CODE", limit: 14
    t.varchar "PORTFOLIO", limit: 13
    t.decimal "ACCRUED_INTEREST_IN_PORT_CCY", precision: 18, scale: 2
    t.decimal "MARKETVALUE", precision: 18, scale: 2
    t.datetime "CREATED_DATE", precision: nil, null: false
  end

  create_table "CUSTODIAN_FEED_STG_SEC", id: false, force: :cascade do |t|
    t.varchar "CODE", limit: 12
    t.varchar "EPIC", limit: 10
    t.varchar "ISIN", limit: 13
    t.varchar "FULLNAME", limit: 100
    t.varchar "ALIAS", limit: 100
    t.decimal "PRICE_BID", precision: 18, scale: 8
    t.decimal "PRICE_OFFER", precision: 18, scale: 8
    t.decimal "PRICE_MID", precision: 18, scale: 8
    t.decimal "PRICE_QUARTERUP", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_BID", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_OFFER", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_MID", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_MUB", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_QUP", precision: 18, scale: 8
    t.char "ISSUECCY", limit: 3
    t.char "INCOMECCY", limit: 3
    t.char "CLASS", limit: 1
    t.char "EARNINGSCCY", limit: 3
    t.integer "ACCOUNTFLAG"
    t.decimal "UNITOFQUOTE", precision: 18, scale: 2
    t.char "EXSHAREC1", limit: 2
    t.char "UNCALLEDLIABILITY", limit: 1
    t.char "INDUST", limit: 10
    t.varchar "SECTYPES", limit: 10
    t.varchar "SECGROUP", limit: 10
    t.varchar "GEOG", limit: 10
    t.varchar "SECCUSTOM", limit: 10
    t.varchar "ASSETTYPE1", limit: 39
    t.varchar "ASSETTYPE2", limit: 39
    t.char "STATUS", limit: 1
    t.varchar "DEALSTYLE", limit: 10
    t.integer "LASTDIVFLAG"
    t.decimal "TOTALDIVIDEND", precision: 18, scale: 8
    t.integer "DAYSACCRUED"
    t.decimal "ACCRUED", precision: 18, scale: 8
    t.integer "DEAL_CAUTION"
    t.varchar "SECMICROPAL", limit: 10
    t.char "CATAGORY", limit: 1
    t.datetime "CURRENT_XD", precision: nil
    t.datetime "PAYMENT", precision: nil
    t.decimal "RATE", precision: 18, scale: 8
    t.decimal "COUPON", precision: 18, scale: 8
    t.datetime "CREATED_DATE", precision: nil, default: -> { "getdate()" }, null: false
    t.char "SSECTOR", limit: 4, default: "9ZZZ"
    t.char "SSECTOR2", limit: 4, default: "9YYY"
  end

  create_table "CUSTODIAN_FEED_STG_SEC_CUST", id: false, force: :cascade do |t|
    t.varchar "CODE", limit: 12
    t.varchar "EPIC", limit: 10
    t.varchar "ISIN", limit: 13
    t.varchar "FULLNAME", limit: 100
    t.varchar "ALIAS", limit: 100
    t.decimal "PRICE_BID", precision: 18, scale: 8
    t.decimal "PRICE_OFFER", precision: 18, scale: 8
    t.decimal "PRICE_MID", precision: 18, scale: 8
    t.decimal "PRICE_QUARTERUP", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_BID", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_OFFER", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_MID", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_MUB", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_QUP", precision: 18, scale: 8
    t.char "ISSUECCY", limit: 3
    t.char "INCOMECCY", limit: 3
    t.char "CLASS", limit: 1
    t.char "EARNINGSCCY", limit: 3
    t.integer "ACCOUNTFLAG"
    t.decimal "UNITOFQUOTE", precision: 18, scale: 2
    t.char "EXSHAREC1", limit: 2
    t.char "UNCALLEDLIABILITY", limit: 1
    t.char "INDUST", limit: 10
    t.varchar "SECTYPES", limit: 10
    t.varchar "SECGROUP", limit: 10
    t.varchar "GEOG", limit: 10
    t.varchar "SECCUSTOM", limit: 10
    t.varchar "ASSETTYPE1", limit: 39
    t.varchar "ASSETTYPE2", limit: 39
    t.char "STATUS", limit: 1
    t.varchar "DEALSTYLE", limit: 10
    t.integer "LASTDIVFLAG"
    t.decimal "TOTALDIVIDEND", precision: 18, scale: 8
    t.integer "DAYSACCRUED"
    t.decimal "ACCRUED", precision: 18, scale: 8
    t.integer "DEAL_CAUTION"
    t.varchar "SECMICROPAL", limit: 10
    t.char "CATAGORY", limit: 1
    t.datetime "CURRENT_XD", precision: nil
    t.datetime "PAYMENT", precision: nil
    t.decimal "RATE", precision: 18, scale: 8
    t.decimal "COUPON", precision: 18, scale: 8
    t.datetime "CREATED_DATE", precision: nil, null: false
    t.char "SSECTOR", limit: 4
    t.char "SSECTOR2", limit: 4
  end

  create_table "CUSTODIAN_FEED_STG_TRAN", id: false, force: :cascade do |t|
    t.char "PORTFOLIO_CODE", limit: 14
    t.varchar "ASSET_ID", limit: 12
    t.datetime "RECORD_DATE", precision: nil
    t.varchar "RECORD_TYPE", limit: 30
    t.varchar "TRANSACTION_TYPE", limit: 30
    t.varchar "TRANSACTION_DESCRIPTION", limit: 200
    t.datetime "SETTLEMENT_DATE", precision: nil
    t.decimal "QUANTITY", precision: 18, scale: 4
    t.decimal "PRICE", precision: 18, scale: 6
    t.decimal "GROSS_VALUE", precision: 18, scale: 4
    t.decimal "ACCRUED_INCOME", precision: 18, scale: 4
    t.decimal "BOOKCOST", precision: 18, scale: 4
    t.decimal "EXPENSES", precision: 18, scale: 4
    t.varchar "REFERENCE", limit: 30
    t.decimal "EXCHANGE_RATE1", precision: 18, scale: 8
    t.decimal "EXCHANGE_RATE2", precision: 18, scale: 8
    t.char "ASSET_CURRENCY", limit: 3
    t.decimal "FIRST_DAY_PRICE", precision: 18, scale: 8
    t.char "CANCELLED_MARKER", limit: 1
    t.char "SETTLEMENT_CURRENCY", limit: 3
    t.varchar "DIVIASSET_CODE", limit: 12
    t.varchar "DIVIASSET_NAME", limit: 100
    t.datetime "CREATED_DATE", precision: nil, default: -> { "getdate()" }, null: false
    t.varchar "TCODE", limit: 7
    t.varchar "HID", limit: 12
  end

  create_table "CUSTODIAN_FEED_STG_TRAN_CUST", id: false, force: :cascade do |t|
    t.char "PORTFOLIO_CODE", limit: 14
    t.varchar "ASSET_ID", limit: 12
    t.datetime "RECORD_DATE", precision: nil
    t.varchar "RECORD_TYPE", limit: 30
    t.varchar "TRANSACTION_TYPE", limit: 30
    t.varchar "TRANSACTION_DESCRIPTION", limit: 200
    t.datetime "SETTLEMENT_DATE", precision: nil
    t.decimal "QUANTITY", precision: 18, scale: 4
    t.decimal "PRICE", precision: 18, scale: 6
    t.decimal "GROSS_VALUE", precision: 18, scale: 4
    t.decimal "ACCRUED_INCOME", precision: 18, scale: 4
    t.decimal "BOOKCOST", precision: 18, scale: 4
    t.decimal "EXPENSES", precision: 18, scale: 4
    t.varchar "REFERENCE", limit: 30
    t.decimal "EXCHANGE_RATE1", precision: 18, scale: 8
    t.decimal "EXCHANGE_RATE2", precision: 18, scale: 8
    t.char "ASSET_CURRENCY", limit: 3
    t.decimal "FIRST_DAY_PRICE", precision: 18, scale: 8
    t.char "CANCELLED_MARKER", limit: 1
    t.char "SETTLEMENT_CURRENCY", limit: 3
    t.varchar "DIVIASSET_CODE", limit: 12
    t.varchar "DIVIASSET_NAME", limit: 100
    t.datetime "CREATED_DATE", precision: nil, null: false
    t.varchar "TCODE", limit: 7
    t.varchar "HID", limit: 12
  end

  create_table "CUST_FEED_STG_SEC", id: false, force: :cascade do |t|
    t.varchar "CODE", limit: 12
    t.varchar "EPIC", limit: 10
    t.varchar "ISIN", limit: 13
    t.varchar "FULLNAME", limit: 100
    t.varchar "ALIAS", limit: 100
    t.decimal "PRICE_BID", precision: 18, scale: 8
    t.decimal "PRICE_OFFER", precision: 18, scale: 8
    t.decimal "PRICE_MID", precision: 18, scale: 8
    t.decimal "PRICE_QUARTERUP", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_BID", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_OFFER", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_MID", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_MUB", precision: 18, scale: 8
    t.decimal "ACCRUED_PRICE_QUP", precision: 18, scale: 8
    t.char "ISSUECCY", limit: 3
    t.char "INCOMECCY", limit: 3
    t.char "CLASS", limit: 1
    t.char "EARNINGSCCY", limit: 3
    t.integer "ACCOUNTFLAG"
    t.decimal "UNITOFQUOTE", precision: 18, scale: 2
    t.char "EXSHAREC1", limit: 2
    t.char "UNCALLEDLIABILITY", limit: 1
    t.char "INDUST", limit: 10
    t.varchar "SECTYPES", limit: 10
    t.varchar "SECGROUP", limit: 10
    t.varchar "GEOG", limit: 10
    t.varchar "SECCUSTOM", limit: 10
    t.varchar "ASSETTYPE1", limit: 39
    t.varchar "ASSETTYPE2", limit: 39
    t.char "STATUS", limit: 1
    t.varchar "DEALSTYLE", limit: 10
    t.integer "LASTDIVFLAG"
    t.decimal "TOTALDIVIDEND", precision: 18, scale: 8
    t.integer "DAYSACCRUED"
    t.decimal "ACCRUED", precision: 18, scale: 8
    t.integer "DEAL_CAUTION"
    t.varchar "SECMICROPAL", limit: 10
    t.char "CATAGORY", limit: 1
    t.datetime "CURRENT_XD", precision: nil
    t.datetime "PAYMENT", precision: nil
    t.decimal "RATE", precision: 18, scale: 8
    t.decimal "COUPON", precision: 18, scale: 8
    t.datetime "CREATED_DATE", precision: nil, null: false
    t.char "SSECTOR", limit: 4
    t.char "SSECTOR2", limit: 4
  end

  create_table "EDINFOSQL", primary_key: "EID", id: { type: :char, limit: 9 }, force: :cascade do |t|
    t.char "CC", limit: 6, null: false
    t.char "CD", limit: 30, null: false
  end

  create_table "EMPINFOSQL", primary_key: "EID", id: { type: :char, limit: 9 }, force: :cascade do |t|
    t.char "LN", limit: 15, null: false
    t.char "FN", limit: 10, null: false
    t.char "CJC", limit: 3, null: false
  end

  create_table "EMPLOYEEINFO", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "First_Name", limit: 50
    t.varchar "Last_Name", limit: 50
    t.varchar "Department", limit: 50
  end

  create_table "EMPLOYEES", id: false, force: :cascade do |t|
    t.varchar "ID", limit: 10
    t.varchar "FIRST_NAME", limit: 50
    t.varchar "LAST_NAME", limit: 50
    t.varchar "DEPARTMENT", limit: 50
    t.index ["ID"], name: "UQ__EMPLOYEE__3214EC26F477599B", unique: true
  end

  create_table "FIR_TABLE", primary_key: "ID", id: { type: :char, limit: 12 }, force: :cascade do |t|
    t.varchar "LastName", limit: 255
    t.varchar "FirstName", limit: 255
    t.varchar "Address", limit: 255, null: false
    t.varchar "City", limit: 255, null: false
    t.integer "AGE", null: false
    t.check_constraint "[AGE]>=(18)", name: "CK__FIR_TABLE__AGE__433006C0"
  end

  create_table "FORMATED12", primary_key: ["COUNTRY", "FOCLIST"], force: :cascade do |t|
    t.char "COUNTRY", limit: 10, null: false
    t.integer "FOCLIST", null: false
    t.char "CARS", limit: 16, null: false
    t.float "RCOST", null: false
    t.float "DCOST", null: false
    t.char "MODEL", limit: 24, null: false
    t.char "TYPE", limit: 12, null: false
  end

  create_table "FRAEMPLOYEE", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "FIRST_NAME", limit: 50
    t.varchar "LAST_NAME", limit: 50
    t.date "HIREDATE"
    t.varchar "DEPARTMENT", limit: 50
    t.integer "SALARY"
    t.varchar "SKILL", limit: 50
  end

  create_table "FRAPINAMES", primary_key: ["API_ID", "FOCFLDNAME"], force: :cascade do |t|
    t.integer "API_ID", null: false
    t.varchar "FOCFLDNAME", limit: 40, null: false
    t.varchar "APIFLDPATH", limit: 40
    t.varchar "APIFLDNAME", limit: 40
    t.varchar "API_DESC", limit: 500
    t.varchar "DEV_DESC", limit: 500
    t.integer "FIELD_ORDER", null: false
  end

  create_table "FRAPIPROGS", primary_key: "API_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "API_PROGRAM", limit: 100, null: false
    t.varchar "MOD_PROGRAM", limit: 100, null: false
    t.varchar "PROG_DESC", limit: 500
  end

  create_table "FRDAUDMEMOS", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "USER_ID", "RPT_ID", "DTS"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: 7, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.varchar "USER_ID", limit: 20, null: false
    t.integer "RPT_ID", null: false
    t.datetime "DTS", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "STATUS", limit: 20, null: false
    t.date "DUE_DATE"
    t.integer "PORT_GROUP_ID"
    t.varchar "APP_NAME", limit: 50
    t.varchar "APP_VIEW", limit: 50
    t.date "AS_OF_DATE"
    t.varchar "MEMO", limit: 4000
  end

  create_table "FRDMEMOS", primary_key: ["ACCT", "USER_ID", "RPT_ID", "DTS"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.varchar "USER_ID", limit: 20, null: false
    t.integer "RPT_ID", null: false
    t.datetime "DTS", precision: nil, null: false
    t.varchar "STATUS", limit: 20, null: false
    t.date "DUE_DATE"
    t.integer "PORT_GROUP_ID"
    t.varchar "APP_NAME", limit: 50
    t.varchar "APP_VIEW", limit: 50
    t.date "AS_OF_DATE"
    t.varchar "MEMO", limit: 4000
  end

  create_table "FRD_EV_BAMINI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.date "ICPDATED01", null: false
  end

  create_table "FRD_EV_FAHMADIAN", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.date "ICPDATED01", null: false
  end

  create_table "FRD_EV_SAMINI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.date "ICPDATED01", null: false
  end

  create_table "FRPAACR", primary_key: ["USER_ID", "ACCT", "RTYPE", "RANGE"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.varchar "ACCT", limit: 14, null: false
    t.char "RTYPE", limit: 2, null: false
    t.decimal "RANGE", precision: 9, null: false
    t.varchar "RTITLE", limit: 25, null: false
    t.varchar "FROMDT", limit: 8, null: false
    t.varchar "TODT", limit: 8, null: false
    t.varchar "MACCT", limit: 14, null: false
    t.varchar "ANAME", limit: 48, null: false
    t.varchar "MNAME", limit: 48, null: false
    t.decimal "ARHELD", precision: 6, scale: 2, null: false
    t.decimal "ARTWRR", precision: 9, scale: 2, null: false
    t.decimal "MRHELD", precision: 6, scale: 2, null: false
    t.decimal "MRTWRR", precision: 9, scale: 2, null: false
    t.decimal "SELECTV", precision: 12, scale: 2, null: false
    t.decimal "WEIGHTG", precision: 12, scale: 2, null: false
    t.decimal "INTERAC", precision: 12, scale: 2, null: false
    t.decimal "RTOTAL", precision: 15, scale: 2, null: false
    t.decimal "AATWRR", precision: 9, scale: 2, null: false
    t.decimal "MATWRR", precision: 9, scale: 2, null: false
    t.varchar "UNITS", limit: 35, null: false
    t.varchar "CHAR_DESC", limit: 35, null: false
    t.char "INV_TYPE", limit: 1, null: false
  end

  create_table "FRPACBNC", primary_key: ["ACCT", "SECTOR"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "SECTOR", limit: 4, null: false
    t.char "INDX", limit: 4
    t.decimal "POLICY", precision: 5, scale: 2
    t.decimal "MINVAR", precision: 5, scale: 2
    t.decimal "MAXVAR", precision: 5, scale: 2
  end

  create_table "FRPACCT", primary_key: ["ACCT", "ASOFDATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.varchar "STATUS", limit: 10
    t.varchar "OPEN1", limit: 10
    t.varchar "OPEN2", limit: 10
  end

  create_table "FRPACCTI", primary_key: ["ACCT", "IADATE", "SEQNUM"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "IADATE", precision: nil, null: false
    t.float "SEQNUM", null: false
    t.varchar "INFO", limit: 255
  end

  create_table "FRPACERULEPKG", primary_key: ["RULEPKG", "RULEID"], force: :cascade do |t|
    t.char "RULEPKG", limit: 3, null: false
    t.integer "RULEID", limit: 2, null: false
  end

  create_table "FRPACERULEPKGDESC", primary_key: "RULEPKG", id: { type: :char, limit: 3 }, force: :cascade do |t|
    t.varchar "RULEPKGDESC", limit: 50
  end

  create_table "FRPACERULES", primary_key: "RULEID", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.varchar "ACERULE", limit: 500
    t.char "TYP", limit: 1
    t.varchar "RULEDESC", limit: 200
  end

  create_table "FRPACGRP", primary_key: ["GROUP_ID", "ACCT"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.char "ACCT", limit: 14, null: false
  end

  create_table "FRPADATE", id: false, force: :cascade do |t|
    t.date "ADATE"
    t.integer "RECORD_COUNT"
    t.varchar "STATUS", limit: 11, null: false
  end

  create_table "FRPAGBLD", primary_key: "AGG", id: { type: :varchar, limit: 11 }, force: :cascade do |t|
    t.varchar "AGGNAME", limit: 50, null: false
    t.char "FLAG", limit: 1, null: false
    t.integer "GROUPING"
  end

  create_table "FRPAGG", primary_key: ["ACCT", "AGG"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.varchar "AGG", limit: 11, null: false
    t.char "DTOVER01", limit: 13
    t.char "DTOVER02", limit: 13
    t.char "DTOVER03", limit: 13
    t.char "DTOVER04", limit: 13
    t.char "DTOVER05", limit: 13
    t.char "DTOVER06", limit: 13
    t.char "DTOVER07", limit: 13
    t.char "DTOVER08", limit: 13
    t.char "DTOVER09", limit: 13
    t.char "DTOVER10", limit: 13
    t.char "DTOVER11", limit: 13
    t.char "DTOVER12", limit: 13
    t.char "DTOVER13", limit: 13
    t.char "DTOVER14", limit: 13
    t.char "DTOVER15", limit: 13
    t.char "DTOVER16", limit: 13
    t.char "DTOVER17", limit: 13
    t.char "DTOVER18", limit: 13
    t.char "DTOVER19", limit: 13
    t.char "DTOVER20", limit: 13
    t.char "DTOVER21", limit: 13
    t.char "DTOVER22", limit: 13
    t.char "DTOVER23", limit: 13
    t.char "DTOVER24", limit: 13
    t.char "DTOVER25", limit: 13
    t.varchar "ENTRRSN01", limit: 100
    t.varchar "EXITRSN01", limit: 100
    t.varchar "ENTRRSN02", limit: 100
    t.varchar "EXITRSN02", limit: 100
    t.varchar "ENTRRSN03", limit: 100
    t.varchar "EXITRSN03", limit: 100
    t.varchar "ENTRRSN04", limit: 100
    t.varchar "EXITRSN04", limit: 100
    t.varchar "ENTRRSN05", limit: 100
    t.varchar "EXITRSN05", limit: 100
    t.varchar "ENTRRSN06", limit: 100
    t.varchar "EXITRSN06", limit: 100
    t.varchar "ENTRRSN07", limit: 100
    t.varchar "EXITRSN07", limit: 100
    t.varchar "ENTRRSN08", limit: 100
    t.varchar "EXITRSN08", limit: 100
    t.varchar "ENTRRSN09", limit: 100
    t.varchar "EXITRSN09", limit: 100
    t.varchar "ENTRRSN10", limit: 100
    t.varchar "EXITRSN10", limit: 100
    t.varchar "ENTRRSN11", limit: 100
    t.varchar "EXITRSN11", limit: 100
    t.varchar "ENTRRSN12", limit: 100
    t.varchar "EXITRSN12", limit: 100
    t.varchar "ENTRRSN13", limit: 100
    t.varchar "EXITRSN13", limit: 100
    t.varchar "ENTRRSN14", limit: 100
    t.varchar "EXITRSN14", limit: 100
    t.varchar "ENTRRSN15", limit: 100
    t.varchar "EXITRSN15", limit: 100
    t.varchar "ENTRRSN16", limit: 100
    t.varchar "EXITRSN16", limit: 100
    t.varchar "ENTRRSN17", limit: 100
    t.varchar "EXITRSN17", limit: 100
    t.varchar "ENTRRSN18", limit: 100
    t.varchar "EXITRSN18", limit: 100
    t.varchar "ENTRRSN19", limit: 100
    t.varchar "EXITRSN19", limit: 100
    t.varchar "ENTRRSN20", limit: 100
    t.varchar "EXITRSN20", limit: 100
    t.varchar "ENTRRSN21", limit: 100
    t.varchar "EXITRSN21", limit: 100
    t.varchar "ENTRRSN22", limit: 100
    t.varchar "EXITRSN22", limit: 100
    t.varchar "ENTRRSN23", limit: 100
    t.varchar "EXITRSN23", limit: 100
    t.varchar "ENTRRSN24", limit: 100
    t.varchar "EXITRSN24", limit: 100
    t.varchar "ENTRRSN25", limit: 100
    t.varchar "EXITRSN25", limit: 100
    t.index ["AGG", "DTOVER01"], name: "IX_FRPAGG_2_3"
  end

  create_table "FRPAGGRP", primary_key: ["GROUP_ID", "AGG"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.varchar "AGG", limit: 11, null: false
  end

  create_table "FRPAIR", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "FYE", limit: 2
    t.char "BNK", limit: 5
    t.varchar "NAME", limit: 48
    t.char "FREQX", limit: 1
    t.char "SECPKG", limit: 3
    t.char "INDXPKG", limit: 3
    t.char "REPTPKG", limit: 3
    t.char "SECTPKG", limit: 3
    t.varchar "ADM", limit: 10
    t.varchar "OFFN", limit: 10
    t.varchar "OBJ", limit: 10
    t.varchar "PWR", limit: 10
    t.varchar "TYP", limit: 10
    t.char "STATUS", limit: 2
    t.varchar "USERDEF", limit: 10
    t.char "EQINDX", limit: 4
    t.char "FXINDX", limit: 4
    t.char "CEINDX", limit: 4
    t.char "WTDINDX", limit: 4
    t.char "EQPOL", limit: 5
    t.char "FXPOL", limit: 5
    t.char "MVI_ACC", limit: 1
    t.datetime "ICPDATED", precision: nil, default: '01-01-1900 00:00:00.0', null: false
    t.char "STATEID", limit: 3
    t.decimal "TXRATE1", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE2", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE3", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE4", precision: 5, scale: 5, default: 0.0
    t.char "ACTIVE", limit: 3
    t.varchar "USERDEF2", limit: 10
    t.varchar "USERDEF3", limit: 10
    t.varchar "USERDEF4", limit: 10
    t.char "RCFREQ", limit: 1, default: "M", null: false
    t.integer "RCTOL", limit: 1, default: 0, null: false
    t.datetime "IPPICP", precision: nil, default: '01-01-2099 00:00:00.0', null: false
    t.varchar "UDA101", limit: 10
    t.varchar "UDA102", limit: 10
    t.varchar "UDA103", limit: 10
    t.varchar "UDA104", limit: 10
    t.varchar "UDA105", limit: 10
    t.varchar "UDA301", limit: 30
    t.varchar "UDA302", limit: 30
    t.varchar "UDA303", limit: 30
    t.varchar "UDA304", limit: 30
    t.varchar "UDA305", limit: 30
    t.decimal "UDN1", precision: 15, scale: 2
    t.decimal "UDN2", precision: 15, scale: 2
    t.decimal "UDN3", precision: 15, scale: 2
    t.decimal "UDN4", precision: 15, scale: 2
    t.decimal "UDN5", precision: 15, scale: 2
    t.datetime "UDDATE1", precision: nil
    t.datetime "UDDATE2", precision: nil
    t.datetime "UDDATE3", precision: nil
    t.datetime "UDDATE4", precision: nil
    t.datetime "UDDATE5", precision: nil
    t.datetime "RPTDATE", precision: nil, default: '01-01-2099 00:00:00.0', null: false
    t.char "GLOBALFL", limit: 1, default: "D", null: false
    t.char "ACCTBASE", limit: 2, default: "US", null: false
    t.char "AGGTYP", limit: 3, default: "   "
    t.varchar "AGGOWNER", limit: 12
    t.char "TOLERPKG", limit: 3, default: "DFL", null: false
    t.integer "PF_TIER", limit: 1, default: 99, null: false
    t.varchar "PCOLOR", limit: 20
    t.decimal "TXRATE5", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE6", precision: 5, scale: 5, default: 0.0
    t.char "TXFDONLY", limit: 1, default: "N"
    t.char "RULEPKG", limit: 3
    t.datetime "ACECDATE", precision: nil
    t.char "AGGFEATR", limit: 3
    t.char "CMPRPIND", limit: 1, default: "C"
    t.char "MR_IND", limit: 1, default: "N", null: false
    t.char "MRRPTFRQ", limit: 1, default: "A", null: false
    t.char "MRACTVRN", limit: 1, default: "N", null: false
    t.datetime "MRLRPDT", precision: nil
    t.datetime "MRLPRCDT", precision: nil
    t.datetime "MRLFRPDT", precision: nil
    t.datetime "MRLFRRDT", precision: nil
    t.varchar "RPTINGNAME", limit: 100
    t.datetime "ICPDATED_ALT", precision: nil, default: '01-01-1900 00:00:00.0'
    t.char "SMARPLEV", limit: 4, default: "STND", null: false
    t.char "SMASRCE", limit: 4
    t.char "SMASORT", limit: 4
    t.char "SMACPYFR", limit: 4
    t.char "SMACPYTO", limit: 4
    t.varchar "UDA106", limit: 10
    t.varchar "UDA107", limit: 10
    t.varchar "UDA108", limit: 10
    t.varchar "UDA109", limit: 10
    t.varchar "UDA110", limit: 10
    t.varchar "UDA111", limit: 10
    t.varchar "UDA112", limit: 10
    t.varchar "UDA113", limit: 10
    t.varchar "UDA114", limit: 10
    t.varchar "UDA115", limit: 10
    t.varchar "UDA306", limit: 30
    t.varchar "UDA307", limit: 30
    t.varchar "UDA308", limit: 30
    t.varchar "UDA309", limit: 30
    t.varchar "UDA310", limit: 30
    t.varchar "UDA311", limit: 30
    t.varchar "UDA312", limit: 30
    t.varchar "UDA313", limit: 30
    t.varchar "UDA314", limit: 30
    t.varchar "UDA315", limit: 30
    t.decimal "UDN6", precision: 15, scale: 2
    t.decimal "UDN7", precision: 15, scale: 2
    t.decimal "UDN8", precision: 15, scale: 2
    t.decimal "UDN9", precision: 15, scale: 2
    t.decimal "UDN10", precision: 15, scale: 2
    t.decimal "UDN11", precision: 15, scale: 2
    t.decimal "UDN12", precision: 15, scale: 2
    t.decimal "UDN13", precision: 15, scale: 2
    t.decimal "UDN14", precision: 15, scale: 2
    t.decimal "UDN15", precision: 15, scale: 2
    t.datetime "UDDATE6", precision: nil
    t.datetime "UDDATE7", precision: nil
    t.datetime "UDDATE8", precision: nil
    t.datetime "UDDATE9", precision: nil
    t.datetime "UDDATE10", precision: nil
    t.datetime "UDDATE11", precision: nil
    t.datetime "UDDATE12", precision: nil
    t.datetime "UDDATE13", precision: nil
    t.datetime "UDDATE14", precision: nil
    t.datetime "UDDATE15", precision: nil
    t.date "APXDATE", default: '12-01-1900'
    t.index ["NAME"], name: "IX_FRPAIR_4"
    t.index ["USERDEF2"], name: "IX_FRPAIR_31"
  end

  create_table "FRPAIR2", id: false, force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "FYE", limit: 2
    t.char "BNK", limit: 5
    t.varchar "NAME", limit: 48
    t.char "FREQX", limit: 1
    t.char "SECPKG", limit: 3
    t.char "INDXPKG", limit: 3
    t.char "REPTPKG", limit: 3
    t.char "SECTPKG", limit: 3
    t.varchar "ADM", limit: 10
    t.varchar "OFFN", limit: 10
    t.varchar "OBJ", limit: 10
    t.varchar "PWR", limit: 10
    t.varchar "TYP", limit: 10
    t.char "STATUS", limit: 2
    t.varchar "USERDEF", limit: 10
    t.char "EQINDX", limit: 4
    t.char "FXINDX", limit: 4
    t.char "CEINDX", limit: 4
    t.char "WTDINDX", limit: 4
    t.char "EQPOL", limit: 5
    t.char "FXPOL", limit: 5
    t.char "MVI_ACC", limit: 1
    t.datetime "ICPDATED", precision: nil, default: '01-01-1900 00:00:00.0', null: false
    t.char "STATEID", limit: 3
    t.decimal "TXRATE1", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE2", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE3", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE4", precision: 5, scale: 5, default: 0.0
    t.char "ACTIVE", limit: 3
    t.varchar "USERDEF2", limit: 10
    t.varchar "USERDEF3", limit: 10
    t.varchar "USERDEF4", limit: 10
    t.char "RCFREQ", limit: 1, default: "M", null: false
    t.integer "RCTOL", limit: 1, default: 0, null: false
    t.datetime "IPPICP", precision: nil, default: '01-01-2099 00:00:00.0', null: false
    t.varchar "UDA101", limit: 10
    t.varchar "UDA102", limit: 10
    t.varchar "UDA103", limit: 10
    t.varchar "UDA104", limit: 10
    t.varchar "UDA105", limit: 10
    t.varchar "UDA301", limit: 30
    t.varchar "UDA302", limit: 30
    t.varchar "UDA303", limit: 30
    t.varchar "UDA304", limit: 30
    t.varchar "UDA305", limit: 30
    t.decimal "UDN1", precision: 15, scale: 2
    t.decimal "UDN2", precision: 15, scale: 2
    t.decimal "UDN3", precision: 15, scale: 2
    t.decimal "UDN4", precision: 15, scale: 2
    t.decimal "UDN5", precision: 15, scale: 2
    t.datetime "UDDATE1", precision: nil
    t.datetime "UDDATE2", precision: nil
    t.datetime "UDDATE3", precision: nil
    t.datetime "UDDATE4", precision: nil
    t.datetime "UDDATE5", precision: nil
    t.datetime "RPTDATE", precision: nil, default: '01-01-2099 00:00:00.0', null: false
    t.char "GLOBALFL", limit: 1, default: "D", null: false
    t.char "ACCTBASE", limit: 2, default: "US", null: false
    t.char "AGGTYP", limit: 3, default: "   "
    t.varchar "AGGOWNER", limit: 12
    t.char "TOLERPKG", limit: 3, default: "DFL", null: false
    t.integer "PF_TIER", limit: 1, default: 99, null: false
    t.varchar "PCOLOR", limit: 20
    t.decimal "TXRATE5", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE6", precision: 5, scale: 5, default: 0.0
    t.char "TXFDONLY", limit: 1, default: "N"
    t.char "RULEPKG", limit: 3
    t.datetime "ACECDATE", precision: nil
    t.char "AGGFEATR", limit: 3
    t.char "CMPRPIND", limit: 1, default: "C"
    t.char "MR_IND", limit: 1, default: "N", null: false
    t.char "MRRPTFRQ", limit: 1, default: "M", null: false
    t.char "MRACTVRN", limit: 1, default: "N", null: false
    t.datetime "MRLRPDT", precision: nil
    t.datetime "MRLPRCDT", precision: nil
    t.datetime "MRLFRPDT", precision: nil
    t.datetime "MRLFRRDT", precision: nil
    t.varchar "RPTINGNAME", limit: 100
    t.datetime "ICPDATED_ALT", precision: nil, default: '01-01-1900 00:00:00.0'
    t.char "SMARPLEV", limit: 4, default: "STND", null: false
    t.char "SMASRCE", limit: 4
    t.char "SMASORT", limit: 4
    t.char "SMACPYFR", limit: 4
    t.char "SMACPYTO", limit: 4
  end

  create_table "FRPAIRD", primary_key: ["ACCT", "ADATED"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "ADATED", precision: nil, null: false
    t.datetime "ADATE", precision: nil
    t.char "FYE", limit: 2
    t.char "BNK", limit: 5
    t.varchar "NAME", limit: 48
    t.char "FREQX", limit: 1
    t.char "SECPKG", limit: 3
    t.char "INDXPKG", limit: 3
    t.char "REPTPKG", limit: 3
    t.char "SECTPKG", limit: 3
    t.varchar "ADM", limit: 10
    t.varchar "OFFN", limit: 10
    t.varchar "OBJ", limit: 10
    t.varchar "PWR", limit: 10
    t.varchar "TYP", limit: 10
    t.char "STATUS", limit: 2
    t.varchar "USERDEF", limit: 10
    t.char "EQINDX", limit: 4
    t.char "FXINDX", limit: 4
    t.char "CEINDX", limit: 4
    t.char "WTDINDX", limit: 4
    t.char "EQPOL", limit: 5
    t.char "FXPOL", limit: 5
    t.char "MVI_ACC", limit: 1
    t.datetime "ICPDATED", precision: nil, default: '01-01-1900 00:00:00.0', null: false
    t.char "STATEID", limit: 3
    t.decimal "TXRATE1", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE2", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE3", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE4", precision: 5, scale: 5, default: 0.0
    t.char "ACTIVE", limit: 3
    t.varchar "USERDEF2", limit: 10
    t.varchar "USERDEF3", limit: 10
    t.varchar "USERDEF4", limit: 10
    t.char "RCFREQ", limit: 1, default: "M", null: false
    t.integer "RCTOL", limit: 1, default: 0, null: false
    t.datetime "IPPICP", precision: nil, default: '01-01-2099 00:00:00.0', null: false
    t.varchar "UDA101", limit: 10
    t.varchar "UDA102", limit: 10
    t.varchar "UDA103", limit: 10
    t.varchar "UDA104", limit: 10
    t.varchar "UDA105", limit: 10
    t.varchar "UDA301", limit: 30
    t.varchar "UDA302", limit: 30
    t.varchar "UDA303", limit: 30
    t.varchar "UDA304", limit: 30
    t.varchar "UDA305", limit: 30
    t.decimal "UDN1", precision: 15, scale: 2
    t.decimal "UDN2", precision: 15, scale: 2
    t.decimal "UDN3", precision: 15, scale: 2
    t.decimal "UDN4", precision: 15, scale: 2
    t.decimal "UDN5", precision: 15, scale: 2
    t.datetime "UDDATE1", precision: nil
    t.datetime "UDDATE2", precision: nil
    t.datetime "UDDATE3", precision: nil
    t.datetime "UDDATE4", precision: nil
    t.datetime "UDDATE5", precision: nil
    t.datetime "RPTDATE", precision: nil, default: '01-01-2099 00:00:00.0', null: false
    t.char "GLOBALFL", limit: 1, default: "D", null: false
    t.char "ACCTBASE", limit: 2, default: "US", null: false
    t.char "AGGTYP", limit: 3, default: "   "
    t.varchar "AGGOWNER", limit: 12
    t.char "TOLERPKG", limit: 3, default: "DFL", null: false
    t.integer "PF_TIER", limit: 1, default: 99, null: false
    t.varchar "PCOLOR", limit: 20
    t.decimal "TXRATE5", precision: 5, scale: 5, default: 0.0
    t.decimal "TXRATE6", precision: 5, scale: 5, default: 0.0
    t.char "TXFDONLY", limit: 1, default: "N"
    t.char "RULEPKG", limit: 3
    t.datetime "ACECDATE", precision: nil
    t.char "AGGFEATR", limit: 3
    t.char "CMPRPIND", limit: 1, default: "C"
    t.char "MR_IND", limit: 1, default: "N", null: false
    t.char "MRRPTFRQ", limit: 1, default: "M", null: false
    t.char "MRACTVRN", limit: 1, default: "N", null: false
    t.datetime "MRLRPDT", precision: nil
    t.datetime "MRLPRCDT", precision: nil
    t.datetime "MRLFRPDT", precision: nil
    t.datetime "MRLFRRDT", precision: nil
    t.varchar "RPTINGNAME", limit: 100
    t.datetime "ICPDATED_ALT", precision: nil, default: '01-01-1900 00:00:00.0'
    t.char "SMARPLEV", limit: 4, default: "STND", null: false
    t.char "SMASRCE", limit: 4
    t.char "SMASORT", limit: 4
    t.char "SMACPYFR", limit: 4
    t.char "SMACPYTO", limit: 4
    t.varchar "UDA106", limit: 10
    t.varchar "UDA107", limit: 10
    t.varchar "UDA108", limit: 10
    t.varchar "UDA109", limit: 10
    t.varchar "UDA110", limit: 10
    t.varchar "UDA111", limit: 10
    t.varchar "UDA112", limit: 10
    t.varchar "UDA113", limit: 10
    t.varchar "UDA114", limit: 10
    t.varchar "UDA115", limit: 10
    t.varchar "UDA306", limit: 30
    t.varchar "UDA307", limit: 30
    t.varchar "UDA308", limit: 30
    t.varchar "UDA309", limit: 30
    t.varchar "UDA310", limit: 30
    t.varchar "UDA311", limit: 30
    t.varchar "UDA312", limit: 30
    t.varchar "UDA313", limit: 30
    t.varchar "UDA314", limit: 30
    t.varchar "UDA315", limit: 30
    t.decimal "UDN6", precision: 15, scale: 2
    t.decimal "UDN7", precision: 15, scale: 2
    t.decimal "UDN8", precision: 15, scale: 2
    t.decimal "UDN9", precision: 15, scale: 2
    t.decimal "UDN10", precision: 15, scale: 2
    t.decimal "UDN11", precision: 15, scale: 2
    t.decimal "UDN12", precision: 15, scale: 2
    t.decimal "UDN13", precision: 15, scale: 2
    t.decimal "UDN14", precision: 15, scale: 2
    t.decimal "UDN15", precision: 15, scale: 2
    t.datetime "UDDATE6", precision: nil
    t.datetime "UDDATE7", precision: nil
    t.datetime "UDDATE8", precision: nil
    t.datetime "UDDATE9", precision: nil
    t.datetime "UDDATE10", precision: nil
    t.datetime "UDDATE11", precision: nil
    t.datetime "UDDATE12", precision: nil
    t.datetime "UDDATE13", precision: nil
    t.datetime "UDDATE14", precision: nil
    t.datetime "UDDATE15", precision: nil
    t.date "APXDATE", default: '12-01-1900'
  end

  create_table "FRPAIRX_BAMINI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SELECTED", limit: 1, null: false
  end

  create_table "FRPAIRX_FAHMADIAN", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SELECTED", limit: 1, null: false
  end

  create_table "FRPAIRX_NRAHIM", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SELECTED", limit: 1, null: false
  end

  create_table "FRPAIRX_SAMINI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SELECTED", limit: 1, null: false
  end

  create_table "FRPAIRX_SKARIMI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SELECTED", limit: 1, null: false
  end

  create_table "FRPAIRX_WAMIRZADA", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SELECTED", limit: 1, null: false
  end

  create_table "FRPAIRX_ZKARIMI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SELECTED", limit: 1, null: false
  end

  create_table "FRPALFLD", primary_key: ["ALFFILE", "ALFFIELD"], force: :cascade do |t|
    t.varchar "ALFFILE", limit: 8, null: false
    t.varchar "ALFFIELD", limit: 16, null: false
    t.varchar "ALFDESC", limit: 16, null: false
    t.char "ALFFIN", limit: 1, null: false
  end

  create_table "FRPALSEL", primary_key: ["ALSUSER", "ALSFILE", "ALSFIELD"], force: :cascade do |t|
    t.varchar "ALSUSER", limit: 20, null: false
    t.varchar "ALSFILE", limit: 8, null: false
    t.varchar "ALSFIELD", limit: 16, null: false
  end

  create_table "FRPAPV", primary_key: ["ACCOUNT", "ASOFDATE", "YEAR", "BORL"], force: :cascade do |t|
    t.char "ACCOUNT", limit: 14, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "YEAR", limit: 16, null: false
    t.char "BORL", limit: 1, null: false
    t.decimal "BEGMKTVAL", precision: 18, scale: 2
    t.decimal "RECEIPTS", precision: 18, scale: 2
    t.decimal "CONTRIB", precision: 18, scale: 2
    t.decimal "WITHDRAWAL", precision: 18, scale: 2
    t.decimal "ENDMKTVAL", precision: 18, scale: 2
    t.decimal "CHANGE", precision: 18, scale: 2
    t.decimal "EQMKTVAL", precision: 18, scale: 2
    t.decimal "FXMKTVAL", precision: 18, scale: 2
    t.decimal "STMKTVAL", precision: 18, scale: 2
    t.decimal "EQDIVER", precision: 18, scale: 2
    t.decimal "FXDIVER", precision: 18, scale: 2
    t.decimal "STDIVER", precision: 18, scale: 2
    t.decimal "TFRET", precision: 18, scale: 2
    t.decimal "TFPRINRET", precision: 18, scale: 2
    t.decimal "TFINCRET", precision: 18, scale: 2
  end

  create_table "FRPAPWIXMAP", primary_key: ["ACCT", "ADATE", "PWMAP"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.date "ADATE", null: false
    t.char "PWMAP", limit: 4, null: false
    t.char "PWINDEX", limit: 4, null: false
  end

  create_table "FRPASSETGRP", primary_key: ["GROUP_ID", "HID"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.char "HID", limit: 12, null: false
  end

  create_table "FRPATYPE", primary_key: ["ASSETTYPE", "INDUSMINMAX"], force: :cascade do |t|
    t.varchar "ASSETTYPE", limit: 9, null: false
    t.varchar "INDUSMINMAX", limit: 20, null: false
    t.char "ISECTOR", limit: 4
    t.char "ACCRTYPE", limit: 2
    t.decimal "PRICEDISC", precision: 18, scale: 2
    t.char "STMTCATEGORY", limit: 4
    t.char "MAJRCATEGORY", limit: 4
    t.varchar "ATNAME", limit: 20
    t.varchar "ATYPE2", limit: 10
    t.char "ISECTOR2", limit: 4
    t.char "ISECTOR3", limit: 4
  end

  create_table "FRPAUDACBNC", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "SECTOR"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "SECTOR", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "INDX", limit: 4
    t.decimal "POLICY", precision: 5, scale: 2
    t.decimal "MINVAR", precision: 5, scale: 2
    t.decimal "MAXVAR", precision: 5, scale: 2
  end

  create_table "FRPAUDACCTS", primary_key: ["AACCT", "ADATE", "A_USERID"], force: :cascade do |t|
    t.char "AACCT", limit: 14, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.varchar "A_USERID", limit: 20, null: false
  end

  create_table "FRPAUDACERULEPKG", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "RULEPKG", "RULEID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "RULEPKG", limit: 3, null: false
    t.integer "RULEID", limit: 2, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
  end

  create_table "FRPAUDACERULEPKGDESC", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "RULEPKG"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "RULEPKG", limit: 3, null: false
    t.varchar "RULEPKGDESC", limit: 50
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
  end

  create_table "FRPAUDACERULES", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "RULEID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.integer "RULEID", limit: 2, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "ACERULE", limit: 500
    t.char "TYP", limit: 1
    t.varchar "RULEDESC", limit: 200
  end

  create_table "FRPAUDAGG", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "AGG"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.varchar "AGG", limit: 11, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "DTOVER01", limit: 13
    t.char "DTOVER02", limit: 13
    t.char "DTOVER03", limit: 13
    t.char "DTOVER04", limit: 13
    t.char "DTOVER05", limit: 13
    t.char "DTOVER06", limit: 13
    t.char "DTOVER07", limit: 13
    t.char "DTOVER08", limit: 13
    t.char "DTOVER09", limit: 13
    t.char "DTOVER10", limit: 13
    t.char "DTOVER11", limit: 13
    t.char "DTOVER12", limit: 13
    t.char "DTOVER13", limit: 13
    t.char "DTOVER14", limit: 13
    t.char "DTOVER15", limit: 13
    t.char "DTOVER16", limit: 13
    t.char "DTOVER17", limit: 13
    t.char "DTOVER18", limit: 13
    t.char "DTOVER19", limit: 13
    t.char "DTOVER20", limit: 13
    t.char "DTOVER21", limit: 13
    t.char "DTOVER22", limit: 13
    t.char "DTOVER23", limit: 13
    t.char "DTOVER24", limit: 13
    t.char "DTOVER25", limit: 13
    t.varchar "ENTRRSN01", limit: 100
    t.varchar "EXITRSN01", limit: 100
    t.varchar "ENTRRSN02", limit: 100
    t.varchar "EXITRSN02", limit: 100
    t.varchar "ENTRRSN03", limit: 100
    t.varchar "EXITRSN03", limit: 100
    t.varchar "ENTRRSN04", limit: 100
    t.varchar "EXITRSN04", limit: 100
    t.varchar "ENTRRSN05", limit: 100
    t.varchar "EXITRSN05", limit: 100
    t.varchar "ENTRRSN06", limit: 100
    t.varchar "EXITRSN06", limit: 100
    t.varchar "ENTRRSN07", limit: 100
    t.varchar "EXITRSN07", limit: 100
    t.varchar "ENTRRSN08", limit: 100
    t.varchar "EXITRSN08", limit: 100
    t.varchar "ENTRRSN09", limit: 100
    t.varchar "EXITRSN09", limit: 100
    t.varchar "ENTRRSN10", limit: 100
    t.varchar "EXITRSN10", limit: 100
    t.varchar "ENTRRSN11", limit: 100
    t.varchar "EXITRSN11", limit: 100
    t.varchar "ENTRRSN12", limit: 100
    t.varchar "EXITRSN12", limit: 100
    t.varchar "ENTRRSN13", limit: 100
    t.varchar "EXITRSN13", limit: 100
    t.varchar "ENTRRSN14", limit: 100
    t.varchar "EXITRSN14", limit: 100
    t.varchar "ENTRRSN15", limit: 100
    t.varchar "EXITRSN15", limit: 100
    t.varchar "ENTRRSN16", limit: 100
    t.varchar "EXITRSN16", limit: 100
    t.varchar "ENTRRSN17", limit: 100
    t.varchar "EXITRSN17", limit: 100
    t.varchar "ENTRRSN18", limit: 100
    t.varchar "EXITRSN18", limit: 100
    t.varchar "ENTRRSN19", limit: 100
    t.varchar "EXITRSN19", limit: 100
    t.varchar "ENTRRSN20", limit: 100
    t.varchar "EXITRSN20", limit: 100
    t.varchar "ENTRRSN21", limit: 100
    t.varchar "EXITRSN21", limit: 100
    t.varchar "ENTRRSN22", limit: 100
    t.varchar "EXITRSN22", limit: 100
    t.varchar "ENTRRSN23", limit: 100
    t.varchar "EXITRSN23", limit: 100
    t.varchar "ENTRRSN24", limit: 100
    t.varchar "EXITRSN24", limit: 100
    t.varchar "ENTRRSN25", limit: 100
    t.varchar "EXITRSN25", limit: 100
  end

  create_table "FRPAUDAIR", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "FYE", limit: 2
    t.char "BNK", limit: 5
    t.varchar "NAME", limit: 48
    t.char "FREQX", limit: 1
    t.char "SECPKG", limit: 3
    t.char "INDXPKG", limit: 3
    t.char "REPTPKG", limit: 3
    t.char "SECTPKG", limit: 3
    t.varchar "ADM", limit: 10
    t.varchar "OFFN", limit: 10
    t.varchar "OBJ", limit: 10
    t.varchar "PWR", limit: 10
    t.varchar "TYP", limit: 10
    t.char "STATUS", limit: 2
    t.varchar "USERDEF", limit: 10
    t.char "EQINDX", limit: 4
    t.char "FXINDX", limit: 4
    t.char "CEINDX", limit: 4
    t.char "WTDINDX", limit: 4
    t.char "EQPOL", limit: 5
    t.char "FXPOL", limit: 5
    t.char "MVI_ACC", limit: 1
    t.datetime "ICPDATED", precision: nil, null: false
    t.char "STATEID", limit: 3
    t.decimal "TXRATE1", precision: 5, scale: 5
    t.decimal "TXRATE2", precision: 5, scale: 5
    t.decimal "TXRATE3", precision: 5, scale: 5
    t.decimal "TXRATE4", precision: 5, scale: 5
    t.char "ACTIVE", limit: 3
    t.varchar "USERDEF2", limit: 10
    t.varchar "USERDEF3", limit: 10
    t.varchar "USERDEF4", limit: 10
    t.char "RCFREQ", limit: 1, null: false
    t.integer "RCTOL", limit: 1, null: false
    t.datetime "IPPICP", precision: nil, null: false
    t.varchar "UDA101", limit: 10
    t.varchar "UDA102", limit: 10
    t.varchar "UDA103", limit: 10
    t.varchar "UDA104", limit: 10
    t.varchar "UDA105", limit: 10
    t.varchar "UDA301", limit: 30
    t.varchar "UDA302", limit: 30
    t.varchar "UDA303", limit: 30
    t.varchar "UDA304", limit: 30
    t.varchar "UDA305", limit: 30
    t.decimal "UDN1", precision: 15, scale: 2
    t.decimal "UDN2", precision: 15, scale: 2
    t.decimal "UDN3", precision: 15, scale: 2
    t.decimal "UDN4", precision: 15, scale: 2
    t.decimal "UDN5", precision: 15, scale: 2
    t.datetime "UDDATE1", precision: nil
    t.datetime "UDDATE2", precision: nil
    t.datetime "UDDATE3", precision: nil
    t.datetime "UDDATE4", precision: nil
    t.datetime "UDDATE5", precision: nil
    t.datetime "RPTDATE", precision: nil, null: false
    t.char "GLOBALFL", limit: 1, null: false
    t.char "ACCTBASE", limit: 2, null: false
    t.char "AGGTYP", limit: 3
    t.varchar "AGGOWNER", limit: 12
    t.char "TOLERPKG", limit: 3, null: false
    t.integer "PF_TIER", limit: 1
    t.varchar "PCOLOR", limit: 20
    t.decimal "TXRATE5", precision: 5, scale: 5
    t.decimal "TXRATE6", precision: 5, scale: 5
    t.char "TXFDONLY", limit: 1
    t.char "RULEPKG", limit: 3
    t.datetime "ACECDATE", precision: nil
    t.char "AGGFEATR", limit: 3
    t.char "CMPRPIND", limit: 1
    t.char "MR_IND", limit: 1
    t.char "MRRPTFRQ", limit: 1
    t.char "MRACTVRN", limit: 1
    t.datetime "MRLRPDT", precision: nil
    t.datetime "MRLPRCDT", precision: nil
    t.datetime "MRLFRPDT", precision: nil
    t.datetime "MRLFRRDT", precision: nil
    t.varchar "RPTINGNAME", limit: 100
    t.datetime "ICPDATED_ALT", precision: nil
    t.char "SMARPLEV", limit: 4
    t.char "SMASRCE", limit: 4
    t.char "SMASORT", limit: 4
    t.char "SMACPYFR", limit: 4
    t.char "SMACPYTO", limit: 4
    t.varchar "UDA106", limit: 10
    t.varchar "UDA107", limit: 10
    t.varchar "UDA108", limit: 10
    t.varchar "UDA109", limit: 10
    t.varchar "UDA110", limit: 10
    t.varchar "UDA111", limit: 10
    t.varchar "UDA112", limit: 10
    t.varchar "UDA113", limit: 10
    t.varchar "UDA114", limit: 10
    t.varchar "UDA115", limit: 10
    t.varchar "UDA306", limit: 30
    t.varchar "UDA307", limit: 30
    t.varchar "UDA308", limit: 30
    t.varchar "UDA309", limit: 30
    t.varchar "UDA310", limit: 30
    t.varchar "UDA311", limit: 30
    t.varchar "UDA312", limit: 30
    t.varchar "UDA313", limit: 30
    t.varchar "UDA314", limit: 30
    t.varchar "UDA315", limit: 30
    t.decimal "UDN6", precision: 15, scale: 2
    t.decimal "UDN7", precision: 15, scale: 2
    t.decimal "UDN8", precision: 15, scale: 2
    t.decimal "UDN9", precision: 15, scale: 2
    t.decimal "UDN10", precision: 15, scale: 2
    t.decimal "UDN11", precision: 15, scale: 2
    t.decimal "UDN12", precision: 15, scale: 2
    t.decimal "UDN13", precision: 15, scale: 2
    t.decimal "UDN14", precision: 15, scale: 2
    t.decimal "UDN15", precision: 15, scale: 2
    t.datetime "UDDATE6", precision: nil
    t.datetime "UDDATE7", precision: nil
    t.datetime "UDDATE8", precision: nil
    t.datetime "UDDATE9", precision: nil
    t.datetime "UDDATE10", precision: nil
    t.datetime "UDDATE11", precision: nil
    t.datetime "UDDATE12", precision: nil
    t.datetime "UDDATE13", precision: nil
    t.datetime "UDDATE14", precision: nil
    t.datetime "UDDATE15", precision: nil
    t.date "APXDATE"
  end

  create_table "FRPAUDAIRD", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "ADATED"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.datetime "ADATED", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.datetime "ADATE", precision: nil
    t.char "FYE", limit: 2
    t.char "BNK", limit: 5
    t.varchar "NAME", limit: 48
    t.char "FREQX", limit: 1
    t.char "SECPKG", limit: 3
    t.char "INDXPKG", limit: 3
    t.char "REPTPKG", limit: 3
    t.char "SECTPKG", limit: 3
    t.varchar "ADM", limit: 10
    t.varchar "OFFN", limit: 10
    t.varchar "OBJ", limit: 10
    t.varchar "PWR", limit: 10
    t.varchar "TYP", limit: 10
    t.char "STATUS", limit: 2
    t.varchar "USERDEF", limit: 10
    t.char "EQINDX", limit: 4
    t.char "FXINDX", limit: 4
    t.char "CEINDX", limit: 4
    t.char "WTDINDX", limit: 4
    t.char "EQPOL", limit: 5
    t.char "FXPOL", limit: 5
    t.char "MVI_ACC", limit: 1
    t.datetime "ICPDATED", precision: nil, null: false
    t.char "STATEID", limit: 3
    t.decimal "TXRATE1", precision: 5, scale: 5
    t.decimal "TXRATE2", precision: 5, scale: 5
    t.decimal "TXRATE3", precision: 5, scale: 5
    t.decimal "TXRATE4", precision: 5, scale: 5
    t.char "ACTIVE", limit: 3
    t.varchar "USERDEF2", limit: 10
    t.varchar "USERDEF3", limit: 10
    t.varchar "USERDEF4", limit: 10
    t.char "RCFREQ", limit: 1, null: false
    t.integer "RCTOL", limit: 1, null: false
    t.datetime "IPPICP", precision: nil, null: false
    t.varchar "UDA101", limit: 10
    t.varchar "UDA102", limit: 10
    t.varchar "UDA103", limit: 10
    t.varchar "UDA104", limit: 10
    t.varchar "UDA105", limit: 10
    t.varchar "UDA301", limit: 30
    t.varchar "UDA302", limit: 30
    t.varchar "UDA303", limit: 30
    t.varchar "UDA304", limit: 30
    t.varchar "UDA305", limit: 30
    t.decimal "UDN1", precision: 15, scale: 2
    t.decimal "UDN2", precision: 15, scale: 2
    t.decimal "UDN3", precision: 15, scale: 2
    t.decimal "UDN4", precision: 15, scale: 2
    t.decimal "UDN5", precision: 15, scale: 2
    t.datetime "UDDATE1", precision: nil
    t.datetime "UDDATE2", precision: nil
    t.datetime "UDDATE3", precision: nil
    t.datetime "UDDATE4", precision: nil
    t.datetime "UDDATE5", precision: nil
    t.datetime "RPTDATE", precision: nil, null: false
    t.char "GLOBALFL", limit: 1, null: false
    t.char "ACCTBASE", limit: 2, null: false
    t.char "AGGTYP", limit: 3
    t.varchar "AGGOWNER", limit: 12
    t.char "TOLERPKG", limit: 3, null: false
    t.integer "PF_TIER", limit: 1, null: false
    t.varchar "PCOLOR", limit: 20
    t.decimal "TXRATE5", precision: 5, scale: 5
    t.decimal "TXRATE6", precision: 5, scale: 5
    t.char "TXFDONLY", limit: 1
    t.char "RULEPKG", limit: 3
    t.datetime "ACECDATE", precision: nil
    t.char "AGGFEATR", limit: 3
    t.char "CMPRPIND", limit: 1
    t.char "MR_IND", limit: 1, null: false
    t.char "MRRPTFRQ", limit: 1, null: false
    t.char "MRACTVRN", limit: 1, null: false
    t.datetime "MRLRPDT", precision: nil
    t.datetime "MRLPRCDT", precision: nil
    t.datetime "MRLFRPDT", precision: nil
    t.datetime "MRLFRRDT", precision: nil
    t.varchar "RPTINGNAME", limit: 100
    t.datetime "ICPDATED_ALT", precision: nil
    t.char "SMARPLEV", limit: 4
    t.char "SMASRCE", limit: 4
    t.char "SMASORT", limit: 4
    t.char "SMACPYFR", limit: 4
    t.char "SMACPYTO", limit: 4
    t.varchar "UDA106", limit: 10
    t.varchar "UDA107", limit: 10
    t.varchar "UDA108", limit: 10
    t.varchar "UDA109", limit: 10
    t.varchar "UDA110", limit: 10
    t.varchar "UDA111", limit: 10
    t.varchar "UDA112", limit: 10
    t.varchar "UDA113", limit: 10
    t.varchar "UDA114", limit: 10
    t.varchar "UDA115", limit: 10
    t.varchar "UDA306", limit: 30
    t.varchar "UDA307", limit: 30
    t.varchar "UDA308", limit: 30
    t.varchar "UDA309", limit: 30
    t.varchar "UDA310", limit: 30
    t.varchar "UDA311", limit: 30
    t.varchar "UDA312", limit: 30
    t.varchar "UDA313", limit: 30
    t.varchar "UDA314", limit: 30
    t.varchar "UDA315", limit: 30
    t.decimal "UDN6", precision: 15, scale: 2
    t.decimal "UDN7", precision: 15, scale: 2
    t.decimal "UDN8", precision: 15, scale: 2
    t.decimal "UDN9", precision: 15, scale: 2
    t.decimal "UDN10", precision: 15, scale: 2
    t.decimal "UDN11", precision: 15, scale: 2
    t.decimal "UDN12", precision: 15, scale: 2
    t.decimal "UDN13", precision: 15, scale: 2
    t.decimal "UDN14", precision: 15, scale: 2
    t.decimal "UDN15", precision: 15, scale: 2
    t.datetime "UDDATE6", precision: nil
    t.datetime "UDDATE7", precision: nil
    t.datetime "UDDATE8", precision: nil
    t.datetime "UDDATE9", precision: nil
    t.datetime "UDDATE10", precision: nil
    t.datetime "UDDATE11", precision: nil
    t.datetime "UDDATE12", precision: nil
    t.datetime "UDDATE13", precision: nil
    t.datetime "UDDATE14", precision: nil
    t.datetime "UDDATE15", precision: nil
    t.date "APXDATE"
  end

  create_table "FRPAUDAPWIXMAP", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "ADATE", "PWMAP"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.date "ADATE", null: false
    t.char "PWMAP", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "PWINDEX", limit: 4, null: false
  end

  create_table "FRPAUDATYPE", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ASSETTYPE", "INDUSMINMAX"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.varchar "ASSETTYPE", limit: 9, null: false
    t.varchar "INDUSMINMAX", limit: 20, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "ISECTOR", limit: 4
    t.char "ACCRTYPE", limit: 2
    t.decimal "PRICEDISC", precision: 18, scale: 2
    t.char "STMTCATEGORY", limit: 4
    t.char "MAJRCATEGORY", limit: 4
    t.varchar "ATNAME", limit: 20
    t.varchar "ATYPE2", limit: 10
    t.char "ISECTOR2", limit: 4
    t.char "ISECTOR3", limit: 4
  end

  create_table "FRPAUDBPFEE", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "GROSS_SECTOR", "NET_SECTOR", "BPDATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "GROSS_SECTOR", limit: 4, null: false
    t.char "NET_SECTOR", limit: 4, null: false
    t.datetime "BPDATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "ANN_BP_FEE", precision: 7, scale: 2
    t.char "BPACTIVE", limit: 1
  end

  create_table "FRPAUDCALLC", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "CALLOCID", "CSECTOR"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "CALLOCID", limit: 3, null: false
    t.char "CSECTOR", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "CSECTNEW", limit: 4
  end

  create_table "FRPAUDCNTRY", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "COUNTRY"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "ISO", limit: 3, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "CNAME", limit: 50
    t.char "REGION", limit: 1
  end

  create_table "FRPAUDCSTMR", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "SEQNUM"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "SEQNUM", limit: 5, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "NAME1", limit: 32
    t.varchar "NAME2", limit: 32
    t.varchar "NAME3", limit: 32
    t.varchar "NAME4", limit: 32
    t.varchar "NAME5", limit: 32
    t.varchar "ADDR1", limit: 100
    t.varchar "ADDR2", limit: 100
    t.varchar "ADDR3", limit: 100
    t.varchar "CITY", limit: 32
    t.varchar "STATE", limit: 32
    t.varchar "ZIP", limit: 9
    t.varchar "SHRTNAME", limit: 40
    t.varchar "BANKNAME", limit: 40
    t.varchar "OFFNAME", limit: 40
    t.varchar "OFFPHONE", limit: 32
    t.varchar "ADMNAME", limit: 40
    t.varchar "ADMPHONE", limit: 32
    t.varchar "TAXID", limit: 15
    t.datetime "STMTICP", precision: nil
  end

  create_table "FRPAUDCTG", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "CATEGORY", "CSECTOR"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "CATEGORY", limit: 4, null: false
    t.char "CSECTOR", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
  end

  create_table "FRPAUDDIFRT", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "DIFSEC"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "DIFSEC", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "WITHCAT", limit: 4, null: false
    t.char "WOCAT", limit: 4, null: false
    t.char "WRITBLNK", limit: 1, null: false
  end

  create_table "FRPAUDDRCTD", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "AACCT", "HID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "AACCT", limit: 14, null: false
    t.char "HID", limit: 12, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "HDIRECT1", limit: 4, null: false
    t.char "HDIRECT2", limit: 4
    t.char "HDIRECT3", limit: 4
    t.varchar "USEDEF", limit: 48
  end

  create_table "FRPAUDEXCH", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "XDATE", "ISOF", "ISOT", "TYP"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.datetime "XDATE", precision: nil, null: false
    t.char "ISOF", limit: 3, null: false
    t.char "ISOT", limit: 3, null: false
    t.integer "TYP", limit: 2, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "XRATE", precision: 18, scale: 8
  end

  create_table "FRPAUDFEES", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "FEECODE", "TSECTOR"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "FEECODE", limit: 30, null: false
    t.char "TSECTOR", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "FSECTOR", limit: 4, null: false
    t.char "ASECTOR", limit: 4
  end

  create_table "FRPAUDFILTR", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "FILTER"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.varchar "FILTER", limit: 8, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "NAME", limit: 25
    t.char "DISPLAY", limit: 1
    t.integer "SORT"
    t.varchar "SHORTDAT", limit: 20
    t.varchar "BIGDAT", limit: 20
    t.integer "VAL_LENGTH", limit: 1
    t.integer "DESC_LENGTH", limit: 1
    t.varchar "SCREEN", limit: 20
    t.varchar "VALTABLE", limit: 20
    t.char "DESC_QUOTES", limit: 1
  end

  create_table "FRPAUDFIRM", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ADATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "MKT_VAL", precision: 18, scale: 2
  end

  create_table "FRPAUDFLVAL", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "VAL_ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.integer "VAL_ID", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "VALUE", limit: 14, null: false
    t.varchar "VAL_DESC", limit: 50
    t.varchar "FILTER", limit: 8, null: false
    t.integer "POSITION"
  end

  create_table "FRPAUDFOOTMAP", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "RPT_THEME_ID", "ACCT_CLIENT_ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.integer "RPT_THEME_ID", null: false
    t.char "ACCT_CLIENT_ID", limit: 14, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "PKG_ID", limit: 3, null: false
    t.varchar "REASON", limit: 100
  end

  create_table "FRPAUDFOOTPKG", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "PKG_ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "PKG_ID", limit: 3, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "PKG_DESC", limit: 50, null: false
    t.decimal "FTNT_SX", precision: 5, scale: 3, null: false
    t.decimal "FTNT_SY", precision: 5, scale: 3, null: false
    t.decimal "FTNT_LX", precision: 5, scale: 3, null: false
    t.decimal "FTNT_LY", precision: 5, scale: 3, null: false
    t.char "FONT_FACE", limit: 20, null: false
    t.char "FONT_COLOR", limit: 11, null: false
    t.integer "FONT_SIZE", limit: 2, null: false
    t.varchar "FTNT_TXT", limit: 4095
    t.varchar "REASON", limit: 100
  end

  create_table "FRPAUDGBR", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "GOAL", "GOALVRSN"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "GOAL", limit: 10, null: false
    t.integer "GOALVRSN", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.datetime "VRSNDATE", precision: nil
    t.char "SECTOR", limit: 4, null: false
    t.datetime "GOALSTARTDT", precision: nil
    t.datetime "GOALENDDT", precision: nil
    t.decimal "INFLATION_ASSUM", precision: 5, scale: 5
    t.decimal "RET_AT_GOAL_ASSUM", precision: 5, scale: 5
    t.decimal "START_BAL", precision: 18, scale: 2
    t.decimal "ANN_INC_SV", precision: 18, scale: 2
    t.decimal "ANN_INC_EV_INP", precision: 18, scale: 2
    t.decimal "ANN_INC_EV_CALC", precision: 18, scale: 2
    t.decimal "GOAL_CURVAL_INP", precision: 18, scale: 2
    t.decimal "GOAL_ENDVAL_INP", precision: 18, scale: 2
    t.decimal "GOAL_ENDVAL_CALC", precision: 18, scale: 2
    t.decimal "SPENDING_RATE", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_1", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_2", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_3", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_4", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_5", precision: 18, scale: 2
    t.char "RISK_MEASURE_1", limit: 4
    t.char "RISK_MEASURE_2", limit: 4
    t.char "RISK_MEASURE_3", limit: 4
    t.char "BENCH_1", limit: 4
    t.char "BENCH_2", limit: 4
    t.char "BENCH_3", limit: 4
    t.decimal "BENCH_TOLER_1", precision: 5, scale: 5
    t.decimal "BENCH_TOLER_2", precision: 5, scale: 5
    t.decimal "BENCH_TOLER_3", precision: 5, scale: 5
    t.decimal "TAXRT_INVEST", precision: 5, scale: 5
    t.decimal "TAXRT_INCOME", precision: 5, scale: 5
    t.decimal "REQ_ROR_GOALST", precision: 18, scale: 8
    t.decimal "REQ_ROR_FROM_ADATE", precision: 18, scale: 8
    t.datetime "LAST_RUN", precision: nil
    t.char "INFLATION_BENCH", limit: 4
    t.varchar "VRSNDESC", limit: 200
    t.char "REPORTGOAL", limit: 1
    t.decimal "ACCEL", precision: 5, scale: 5
  end

  create_table "FRPAUDGLVAR", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "GL_ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.integer "GL_ID", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "GL_DESC", limit: 50, null: false
    t.varchar "GL_VAL", limit: 20
    t.varchar "GL_INPTYPE", limit: 15
    t.varchar "GL_INPVALS", limit: 50
  end

  create_table "FRPAUDGOAL", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "GOAL"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "GOAL", limit: 10, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "GOAL_DESC", limit: 100
    t.char "GOAL_TYPE", limit: 2
  end

  create_table "FRPAUDHIDUVR", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "HID", "ADATE", "HDIRECT1", "HDIRECT2", "HDIRECT3"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "HID", limit: 12, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "HDIRECT1", limit: 4, null: false
    t.char "HDIRECT2", limit: 4, null: false
    t.char "HDIRECT3", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "PRVHUNITS", precision: 18, scale: 4
    t.decimal "TRUNITS", precision: 18, scale: 4
    t.decimal "HUNITS", precision: 18, scale: 4
    t.decimal "SPLITUNITS", precision: 18, scale: 4
    t.decimal "UTPRTOSPLIT", precision: 18, scale: 4
    t.integer "UNITSNOPRIN"
    t.decimal "TRANUNTB", precision: 18, scale: 4
    t.decimal "TRANPRNB", precision: 18, scale: 2
    t.decimal "TRANUNTS", precision: 18, scale: 4
    t.decimal "TRANPRNS", precision: 18, scale: 2
    t.decimal "DLUVR", precision: 11, scale: 6
    t.decimal "DLPUVR", precision: 11, scale: 6
    t.decimal "UVR", precision: 11, scale: 6
    t.decimal "PMKT", precision: 18, scale: 2
    t.decimal "PACC", precision: 18, scale: 2
    t.decimal "MKT", precision: 18, scale: 2
    t.decimal "INC", precision: 18, scale: 2
    t.decimal "ACC", precision: 18, scale: 2
    t.decimal "POS", precision: 18, scale: 2
    t.decimal "NEG", precision: 18, scale: 2
    t.decimal "RETPF", precision: 9, scale: 6
    t.decimal "RETNF", precision: 9, scale: 6
    t.decimal "PF", precision: 9, scale: 6
    t.decimal "NF", precision: 9, scale: 6
    t.decimal "SPOS2", precision: 18, scale: 2
    t.decimal "SWPOS", precision: 18, scale: 2
    t.decimal "SNEG2", precision: 18, scale: 2
    t.decimal "SWNEG", precision: 18, scale: 2
    t.decimal "DLUVRL", precision: 11, scale: 6
    t.decimal "DLPUVRL", precision: 11, scale: 6
    t.decimal "UVRL", precision: 11, scale: 6
    t.decimal "PMKTL", precision: 18, scale: 2
    t.decimal "PACCL", precision: 18, scale: 2
    t.decimal "MKTL", precision: 18, scale: 2
    t.decimal "INCL", precision: 18, scale: 2
    t.decimal "ACCL", precision: 18, scale: 2
    t.decimal "POSL", precision: 18, scale: 2
    t.decimal "NEGL", precision: 18, scale: 2
    t.decimal "RETPFL", precision: 9, scale: 6
    t.decimal "RETNFL", precision: 9, scale: 6
    t.decimal "PFL", precision: 9, scale: 6
    t.decimal "NFL", precision: 9, scale: 6
    t.decimal "SPOS2L", precision: 18, scale: 2
    t.decimal "SWPOSL", precision: 18, scale: 2
    t.decimal "SNEG2L", precision: 18, scale: 2
    t.decimal "SWNEGL", precision: 18, scale: 2
    t.decimal "UMTPOS", precision: 18, scale: 2
    t.decimal "UMTPOSL", precision: 18, scale: 2
    t.decimal "UMTNEG", precision: 18, scale: 2
    t.decimal "UMTNEGL", precision: 18, scale: 2
    t.decimal "TPOS", precision: 18, scale: 2
    t.decimal "TPOS2", precision: 18, scale: 2
    t.decimal "TWPOS", precision: 18, scale: 2
    t.decimal "TNEG", precision: 18, scale: 2
    t.decimal "TNEG2", precision: 18, scale: 2
    t.decimal "TWNEG", precision: 18, scale: 2
    t.decimal "HFACTOR", precision: 9, scale: 6
    t.integer "TSTFACTORS", limit: 2
    t.integer "CHGFACTORS", limit: 2
    t.char "ISSELLOUT", limit: 1
    t.char "ISBUYIN", limit: 1
    t.char "SHORTOPEN", limit: 1
    t.char "SHORTCLOSE", limit: 1
    t.decimal "SIGFLOWPCT", precision: 7, scale: 2
    t.decimal "SELLOUTPCT", precision: 7, scale: 2
    t.char "DAYSHLD", limit: 2
    t.decimal "FACTOR", precision: 18, scale: 2
    t.decimal "TOTPURCH", precision: 18, scale: 2
    t.decimal "TOTSALE", precision: 18, scale: 2
    t.decimal "TOTCONTR", precision: 18, scale: 2
    t.decimal "TOTDISTR", precision: 18, scale: 2
    t.decimal "TOTFR", precision: 18, scale: 2
    t.decimal "TOTFD", precision: 18, scale: 2
    t.decimal "TOTFEE", precision: 18, scale: 2
    t.decimal "TOTEXP", precision: 18, scale: 2
    t.decimal "TOTPURCHL", precision: 18, scale: 2
    t.decimal "TOTSALEL", precision: 18, scale: 2
    t.decimal "TOTCONTRL", precision: 18, scale: 2
    t.decimal "TOTDISTRL", precision: 18, scale: 2
    t.decimal "TOTFRL", precision: 18, scale: 2
    t.decimal "TOTFDL", precision: 18, scale: 2
    t.decimal "TOTFEEL", precision: 18, scale: 2
    t.decimal "TOTEXPL", precision: 18, scale: 2
    t.decimal "SHRT_RGAIN", precision: 18, scale: 2
    t.decimal "SHRT_RGAINL", precision: 18, scale: 2
    t.decimal "LONG_RGAIN", precision: 18, scale: 2
    t.decimal "LONG_RGAINL", precision: 18, scale: 2
    t.decimal "INC_DIV", precision: 18, scale: 2
    t.decimal "INC_DIVL", precision: 18, scale: 2
    t.decimal "INC_INT", precision: 18, scale: 2
    t.decimal "INC_INTL", precision: 18, scale: 2
    t.decimal "INC_STINT", precision: 18, scale: 2
    t.decimal "INC_STINTL", precision: 18, scale: 2
    t.decimal "INC_OTHER", precision: 18, scale: 2
    t.decimal "INC_OTHERL", precision: 18, scale: 2
    t.decimal "HCARRY", precision: 18, scale: 2
    t.decimal "HCARRYL", precision: 18, scale: 2
    t.decimal "PRVHCARRY", precision: 18, scale: 2
    t.decimal "PRVHCARRYL", precision: 18, scale: 2
    t.decimal "HPRINCIPAL", precision: 18, scale: 2
    t.decimal "HPRINCIPALL", precision: 18, scale: 2
    t.decimal "HACCRUAL", precision: 18, scale: 2
    t.decimal "HACCRUALL", precision: 18, scale: 2
  end

  create_table "FRPAUDHOLD", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "AACCT", "ADATE", "HID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.varchar "AACCT", limit: 14, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "HID", limit: 12, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "HUNITS", precision: 18, scale: 4
    t.char "HDIRECT1", limit: 4
    t.char "HDIRECT2", limit: 4
    t.char "HDIRECT3", limit: 4
    t.decimal "HPRINCIPAL", precision: 18, scale: 2
    t.decimal "HACCRUAL", precision: 18, scale: 2
    t.decimal "HCARRY", precision: 18, scale: 2
    t.datetime "HDATE", precision: nil
    t.decimal "HUNITST", precision: 18, scale: 4
    t.decimal "HPRINCIPALT", precision: 18, scale: 2
    t.decimal "HACCRUALT", precision: 18, scale: 2
    t.decimal "HCARRYL", precision: 18, scale: 2
    t.decimal "USERDEF1", precision: 18, scale: 2
    t.char "USERCHR1", limit: 4
  end

  create_table "FRPAUDINDX", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "INDX", "IDATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "INDX", limit: 4, null: false
    t.datetime "IDATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "IPRICE", precision: 18, scale: 6
    t.decimal "IINC", precision: 18, scale: 2
    t.decimal "IRET", precision: 9, scale: 6
  end

  create_table "FRPAUDINDXD", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "INDX", "IDATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "INDX", limit: 4, null: false
    t.datetime "IDATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "IPRICE", precision: 18, scale: 6
    t.decimal "IINC", precision: 18, scale: 2
    t.decimal "IRET", precision: 9, scale: 6
  end

  create_table "FRPAUDIPKG1", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "PKG"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "PKG", limit: 3, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "MODELI1", limit: 4
    t.char "MODELI2", limit: 4
  end

  create_table "FRPAUDIPKG2", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "PKG", "INDICES"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "PKG", limit: 3, null: false
    t.char "INDICES", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "MSECTOR1", limit: 4
    t.char "MSECTOR2", limit: 4
    t.varchar "GINDEX", limit: 10
  end

  create_table "FRPAUDIPP", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "IPDATE", "SECTOR", "COUNTRY", "ADATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.date "IPDATE", null: false
    t.char "SECTOR", limit: 4, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.date "ADATE", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "IPUVR", precision: 9, scale: 6
    t.decimal "IPMKT", precision: 18, scale: 2
    t.decimal "IPINC", precision: 18, scale: 2
    t.decimal "IPACC", precision: 18, scale: 2
    t.decimal "IPPF", precision: 11, scale: 6
    t.decimal "IPPOS", precision: 18, scale: 2
    t.decimal "IPNF", precision: 11, scale: 6
    t.decimal "IPNEG", precision: 18, scale: 2
    t.decimal "PMKT", precision: 18, scale: 2
    t.decimal "PACC", precision: 18, scale: 2
    t.decimal "DFLOWS", precision: 18, scale: 2
    t.decimal "IPUVRL", precision: 9, scale: 6
    t.datetime "DATESTMP", precision: nil
  end

  create_table "FRPAUDISO", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ISO"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ISO", limit: 3, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "ISONAME", limit: 50
    t.integer "ROUNDING", limit: 1
    t.varchar "C_STATUS", limit: 7
  end

  create_table "FRPAUDMIFID", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "ALERT_DATE", "PCTG_BRK"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.datetime "ALERT_DATE", precision: nil, null: false
    t.integer "PCTG_BRK", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "ALERT_UVR", precision: 11, scale: 6
    t.char "SECTOR", limit: 4
    t.char "FREQUENCY", limit: 1
  end

  create_table "FRPAUDPOLMAP", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "PWMAP", "PWINDEX"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "PWMAP", limit: 4, null: false
    t.char "PWINDEX", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "F1_VALUE", limit: 30
    t.varchar "F2_VALUE", limit: 30
    t.varchar "F3_VALUE", limit: 30
    t.varchar "F4_VALUE", limit: 30
    t.varchar "F5_VALUE", limit: 30
  end

  create_table "FRPAUDPRICE", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ID", "SDATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ID", limit: 12, null: false
    t.datetime "SDATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "SPRICE", precision: 18, scale: 6
    t.datetime "DATESTMP", precision: nil
    t.decimal "PRINFACT", precision: 11, scale: 8
  end

  create_table "FRPAUDPWIX", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "PWINDEX", "SDATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "PWINDEX", limit: 4, null: false
    t.datetime "SDATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "ACTIND", limit: 1, null: false
    t.char "INDEX01", limit: 4
    t.decimal "PWGHT01", precision: 5, scale: 2
    t.char "INDEX02", limit: 4
    t.decimal "PWGHT02", precision: 5, scale: 2
    t.char "INDEX03", limit: 4
    t.decimal "PWGHT03", precision: 5, scale: 2
    t.char "INDEX04", limit: 4
    t.decimal "PWGHT04", precision: 5, scale: 2
    t.char "INDEX05", limit: 4
    t.decimal "PWGHT05", precision: 5, scale: 2
    t.char "INDEX06", limit: 4
    t.decimal "PWGHT06", precision: 5, scale: 2
    t.char "INDEX07", limit: 4
    t.decimal "PWGHT07", precision: 5, scale: 2
    t.char "INDEX08", limit: 4
    t.decimal "PWGHT08", precision: 5, scale: 2
    t.char "INDEX09", limit: 4
    t.decimal "PWGHT09", precision: 5, scale: 2
    t.char "INDEX10", limit: 4
    t.decimal "PWGHT10", precision: 5, scale: 2
    t.char "INDEX11", limit: 4
    t.decimal "PWGHT11", precision: 5, scale: 2
    t.char "INDEX12", limit: 4
    t.decimal "PWGHT12", precision: 5, scale: 2
    t.char "INDEX13", limit: 4
    t.decimal "PWGHT13", precision: 5, scale: 2
    t.char "INDEX14", limit: 4
    t.decimal "PWGHT14", precision: 5, scale: 2
    t.char "INDEX15", limit: 4
    t.decimal "PWGHT15", precision: 5, scale: 2
    t.char "INDEX16", limit: 4
    t.decimal "PWGHT16", precision: 5, scale: 2
    t.char "INDEX17", limit: 4
    t.decimal "PWGHT17", precision: 5, scale: 2
    t.char "INDEX18", limit: 4
    t.decimal "PWGHT18", precision: 5, scale: 2
    t.char "INDEX19", limit: 4
    t.decimal "PWGHT19", precision: 5, scale: 2
    t.char "INDEX20", limit: 4
    t.decimal "PWGHT20", precision: 5, scale: 2
  end

  create_table "FRPAUDRGN", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "REGION", "COUNTRY"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "REGION", limit: 2, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
  end

  create_table "FRPAUDRPTS", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "RPT_ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.integer "RPT_ID", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "RPT_NAME", limit: 50
    t.varchar "PART1", limit: 20
    t.varchar "PART2", limit: 20
    t.varchar "PART3", limit: 20
    t.varchar "SCREEN", limit: 20
    t.varchar "TYP", limit: 20
    t.char "MGMT", limit: 1
    t.char "BASE", limit: 1
    t.char "FYE", limit: 1
    t.char "PORI", limit: 1
    t.char "RANKMGMT", limit: 1
    t.char "RO_GRP_IND", limit: 1
    t.char "SCT_GRP_IND", limit: 1
    t.char "MSECTOR_IND", limit: 1
    t.char "MINDEX1_IND", limit: 1
    t.char "MINDEX2_IND", limit: 1
    t.char "MACCT_IND", limit: 1
    t.char "COLUMNSX_IND", limit: 1
    t.char "FREQ_IND", limit: 1
    t.char "PIDIFF_IND", limit: 1
    t.integer "SPPCOLS", limit: 1
    t.varchar "RPT_DEF1", limit: 15
    t.varchar "RPT_DEF2", limit: 15
    t.varchar "RPT_DEF3", limit: 15
    t.varchar "RPT_DEF4", limit: 15
    t.varchar "RPT_DEF5", limit: 15
    t.varchar "RPT_R_STYLE", limit: 8
    t.char "RPT_R_ORIENT", limit: 1
    t.decimal "RPT_R_TM", precision: 5, scale: 2
    t.decimal "RPT_R_BM", precision: 5, scale: 2
    t.decimal "RPT_R_LM", precision: 5, scale: 2
    t.decimal "RPT_R_RM", precision: 5, scale: 2
    t.integer "RPT_R_INCR"
    t.decimal "RPT_R_C_INCR", precision: 5, scale: 1
    t.varchar "RPT_H_HEAD", limit: 8
    t.char "RPT_H_JUSTF", limit: 6
    t.char "RPT_H_ACCTID", limit: 1
    t.char "RPT_H_ACCT_S", limit: 1
    t.char "RPT_H_DATE", limit: 1
    t.integer "RPT_H_INCR"
    t.varchar "RPT_F_FOOT", limit: 8
    t.char "RPT_F_DATE", limit: 1
    t.char "RPT_F_ACCTID", limit: 1
    t.char "RPT_F_RPT_ID", limit: 1
    t.varchar "RPT_F_TEXT1", limit: 250
    t.varchar "RPT_F_TEXT2", limit: 250
    t.varchar "RPT_F_TEXT3", limit: 250
    t.varchar "RPT_F_TEXT4", limit: 250
    t.integer "RPT_F_T_INCR"
    t.char "RPT_F_T_SUP", limit: 1
    t.char "RPT_NEG100", limit: 1
    t.integer "PAGENUMBER", limit: 1
    t.char "RO_HD_IND", limit: 1
    t.integer "RP_TIER", limit: 1
    t.char "RO_GRP2_IND", limit: 1
    t.char "STPOPTION", limit: 1
    t.char "MR_LAYOUT", limit: 8
    t.integer "MR_RPT_ID"
    t.integer "MR_RO2_GRP"
    t.integer "MR_SRC_RPT_ID"
  end

  create_table "FRPAUDSBSGRP", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "GROUP_ID", "SIFLAG", "SORI", "MAJSORT", "MINSORT"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.integer "GROUP_ID", null: false
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
    t.integer "MAJSORT", null: false
    t.integer "MINSORT", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "SCTLINK", limit: 4
    t.char "CTYLINK", limit: 2
  end

  create_table "FRPAUDSEC", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ID", limit: 12, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "TICKER", limit: 10
    t.varchar "CUSIP", limit: 9
    t.varchar "NAMETKR", limit: 50
    t.char "ISIN", limit: 12
    t.varchar "NAMEDESC", limit: 50
    t.varchar "ASSETTYPE", limit: 9
    t.char "SCATEGORY", limit: 4
    t.char "SSECTOR", limit: 4
    t.char "SINDUSTRY", limit: 4
    t.decimal "FACTOR", precision: 18, scale: 2
    t.decimal "BETA", precision: 18, scale: 3
    t.decimal "CURPRICE", precision: 18, scale: 6
    t.decimal "FRIPRICE", precision: 18, scale: 6
    t.decimal "MTDPRICE", precision: 18, scale: 6
    t.varchar "QUALITY", limit: 6
    t.datetime "MATURITY", precision: nil
    t.decimal "COUPON", precision: 18, scale: 6
    t.decimal "ANNDIV", precision: 18, scale: 6
    t.decimal "YIELD", precision: 18, scale: 6
    t.datetime "CALLDATE", precision: nil
    t.datetime "PUTDATE", precision: nil
    t.datetime "IDATE", precision: nil
    t.datetime "LASTDATE", precision: nil
    t.datetime "NEXTDATE", precision: nil
    t.integer "FPAYDATE"
    t.integer "SPAYDATE"
    t.datetime "FCPNDATE", precision: nil
    t.datetime "XDIVDATE", precision: nil
    t.datetime "PADATE", precision: nil
    t.char "PAFREQ", limit: 2
    t.char "ACCRTYPE", limit: 2
    t.char "HCATEGORY", limit: 4
    t.char "SSECTOR2", limit: 4
    t.char "SSECTOR3", limit: 4
    t.char "TAXABLEI", limit: 2
    t.char "SSTATE", limit: 2
    t.char "COUNTRY", limit: 2
    t.char "ISSCNTRY", limit: 2
    t.char "PAYCURR", limit: 3
    t.decimal "DAYFACTOR", precision: 9, scale: 6
    t.char "SKIPLOG", limit: 1
    t.varchar "QUALITY2", limit: 6
    t.decimal "CALLPRICE", precision: 18, scale: 6
    t.decimal "PUTPRICE", precision: 18, scale: 6
    t.char "SKIPUOOB", limit: 1
    t.char "BMRK_ID", limit: 4
    t.char "MWRR_FLAG", limit: 1
    t.varchar "USERAN1", limit: 50
    t.varchar "USERAN2", limit: 50
    t.varchar "USERAN3", limit: 50
    t.varchar "USERAN4", limit: 50
    t.varchar "USERAN5", limit: 50
    t.varchar "USERAN6", limit: 10
  end

  create_table "FRPAUDSECTR", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ACCT", "COUNTRY", "SECTOR", "ADATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "UVR", precision: 9, scale: 6
    t.decimal "MKT", precision: 18, scale: 2
    t.decimal "INC", precision: 18, scale: 2
    t.decimal "ACC", precision: 18, scale: 2
    t.decimal "POL", precision: 9, scale: 2
    t.decimal "POS", precision: 18, scale: 2
    t.decimal "NEG", precision: 18, scale: 2
    t.decimal "PF", precision: 9, scale: 6
    t.decimal "NF", precision: 9, scale: 6
    t.char "STATUS", limit: 2
    t.char "SRCFREQ", limit: 1, null: false
    t.integer "SRCTOL", limit: 1, null: false
    t.decimal "UVRL", precision: 9, scale: 6
    t.decimal "LINKUVR", precision: 18, scale: 6
    t.integer "LINKCK"
    t.decimal "PMKT", precision: 18, scale: 2
    t.decimal "PACC", precision: 18, scale: 2
    t.decimal "DFLOWS", precision: 18, scale: 2
  end

  create_table "FRPAUDSI1", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "SIFLAG", "SORI"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "SORINAME", limit: 50
    t.char "TFSEC", limit: 1
    t.char "OPT", limit: 1
    t.char "EXC", limit: 1
    t.char "CSH", limit: 1
    t.varchar "SRT", limit: 5
    t.varchar "CATNAME", limit: 30
    t.varchar "GINDEX", limit: 30
    t.varchar "EXTRA2", limit: 30
    t.char "SSFCHK", limit: 1
    t.char "TAXOFFSET", limit: 4
    t.varchar "TYP", limit: 20
    t.decimal "DAYFACTOR", precision: 9, scale: 6
    t.varchar "COLOR", limit: 20
    t.varchar "SHORTNAME", limit: 20
    t.char "BMCOUNTRY", limit: 2, null: false
    t.char "HDX", limit: 1
    t.varchar "SI1USER1", limit: 10
    t.varchar "SI1USER2", limit: 10
    t.varchar "SI1USER3", limit: 10
    t.varchar "SI1USER4", limit: 10
    t.varchar "SI1USER5", limit: 10
    t.integer "SB_TIER", limit: 1
    t.char "TOTCTG", limit: 4
    t.char "XPLUGFACTOR", limit: 1
    t.char "BRCFREQ", limit: 1
    t.char "GBR_FLAG", limit: 1
    t.char "MWRR_FLAG", limit: 1
  end

  create_table "FRPAUDSI2", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "SIFLAG", "SORI", "PKGID", "BLDATE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
    t.char "PKGID", limit: 4, null: false
    t.datetime "BLDATE", precision: nil, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "SINDEX", limit: 4
    t.char "BLACTIVE", limit: 1
  end

  create_table "FRPAUDTCD", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "T_CODE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.varchar "T_CODE", limit: 7, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "T_DESC", limit: 30
    t.integer "SF_UNITS", limit: 2
    t.integer "TP_PRIN", limit: 2
    t.integer "TP_INC", limit: 2
    t.integer "TP_NET", limit: 2
    t.integer "TP_CV", limit: 2
    t.integer "TN_PRIN", limit: 2
    t.integer "TN_INC", limit: 2
    t.integer "TN_NET", limit: 2
    t.integer "TN_CV", limit: 2
    t.integer "SI_PRIN", limit: 2
    t.integer "SI_INC", limit: 2
    t.integer "SI_NET", limit: 2
    t.integer "SI_CV", limit: 2
    t.integer "SP_PRIN", limit: 2
    t.integer "SP_INC", limit: 2
    t.integer "SP_NET", limit: 2
    t.integer "SP_CV", limit: 2
    t.integer "SN_PRIN", limit: 2
    t.integer "SN_INC", limit: 2
    t.integer "SN_NET", limit: 2
    t.integer "SN_CV", limit: 2
    t.integer "CP_PRIN", limit: 2
    t.integer "CP_INC", limit: 2
    t.integer "CP_NET", limit: 2
    t.integer "CP_CV", limit: 2
    t.integer "CN_PRIN", limit: 2
    t.integer "CN_INC", limit: 2
    t.integer "CN_NET", limit: 2
    t.integer "CN_CV", limit: 2
    t.char "T_IDENT", limit: 2
  end

  create_table "FRPAUDTCMAP", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "SRCTCODE"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "SRCTCODE", limit: 20, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "FRTCODE", limit: 7
    t.varchar "SRCDESC", limit: 50
    t.char "GROUPING", limit: 20
    t.varchar "USERDEF", limit: 10
  end

  create_table "FRPAUDTOLER", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "SECTOR"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "SECTOR", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.integer "LOW"
    t.integer "HIGH"
    t.char "INDX", limit: 4
  end

  create_table "FRPAUDTOLRP", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "PKG", "COUNTRY", "SECTOR"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.char "PKG", limit: 3, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.integer "LOW", null: false
    t.integer "HIGH", null: false
    t.char "INDX", limit: 4, null: false
  end

  create_table "FRPAUDTRAN", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "AACCT", "ADATE", "HID", "TDATE", "TCODE", "TSEQ"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.varchar "AACCT", limit: 14, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "HID", limit: 12, null: false
    t.datetime "TDATE", precision: nil, null: false
    t.varchar "TCODE", limit: 7, null: false
    t.integer "TSEQ", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.char "TPEND", limit: 1
    t.varchar "TSTATE", limit: 5
    t.varchar "TSTORY", limit: 150
    t.datetime "TORIGDATE", precision: nil
    t.datetime "TSETTDATE", precision: nil
    t.decimal "TUNITS", precision: 18, scale: 4
    t.decimal "TPRICE", precision: 18, scale: 6
    t.decimal "TPRINCIPAL", precision: 18, scale: 2
    t.decimal "TINCOME", precision: 18, scale: 2
    t.decimal "TNET", precision: 18, scale: 2
    t.decimal "TCARRY", precision: 18, scale: 2
    t.decimal "TCOMM", precision: 18, scale: 2
    t.decimal "TEXPENSE", precision: 18, scale: 2
    t.varchar "TBROKER", limit: 10
    t.varchar "TRPTCODE", limit: 8
    t.decimal "SHRTGAIN", precision: 18, scale: 2
    t.decimal "LONGGAIN", precision: 18, scale: 2
    t.char "STATEID", limit: 3
    t.varchar "UNIQSEQ", limit: 18
    t.char "TAXIND", limit: 2
    t.decimal "TCARRYL", precision: 18, scale: 2
    t.datetime "TPOST", precision: nil
    t.decimal "TEXCHLOC", precision: 18, scale: 8
    t.decimal "USERDEF1", precision: 18, scale: 2
    t.char "USERCHR1", limit: 4
    t.decimal "TEXCHPAY", precision: 18, scale: 8
    t.char "TPAYCNTRY", limit: 2
    t.varchar "USERCHR2", limit: 10
    t.varchar "USERCHR3", limit: 10
    t.varchar "USERCHR4", limit: 20
    t.varchar "USERCHR5", limit: 20
    t.varchar "USERCHR6", limit: 10
    t.datetime "USERDT1", precision: nil
  end

  create_table "FRPAUDTX", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "ADATE", "STATEFED"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "STATEFED", limit: 2, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.decimal "MAXSHORT", precision: 6, scale: 4
    t.decimal "MAXLONG", precision: 6, scale: 4
  end

  create_table "FRPAUDUSER", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "USER_ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.varchar "USER_ID", limit: 20, null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
    t.varchar "USER_FNAME", limit: 25
    t.varchar "USER_LNAME", limit: 25
    t.char "CHANGED", limit: 1
    t.char "USER_TYPE", limit: 1, null: false
    t.varchar "EMAIL", limit: 200
    t.varchar "CORE_USER_GRP", limit: 20, null: false
    t.nchar "LANG_ABBR", limit: 4, null: false
    t.nchar "PERM_LANG_ABBR", limit: 4, null: false
  end

  create_table "FRPAUDUSROB", primary_key: ["A_DTTM", "A_TYPE", "A_USERID", "USER_ID", "OBJECT_ID"], force: :cascade do |t|
    t.datetime "A_DTTM", precision: nil, null: false
    t.char "A_TYPE", limit: 1, null: false
    t.varchar "A_USERID", limit: 20, null: false
    t.varchar "USER_ID", limit: 20, null: false
    t.integer "OBJECT_ID", null: false
    t.varchar "A_SOURCE", limit: 8
    t.varchar "A_REASON", limit: 100
  end

  create_table "FRPBETA", primary_key: ["ACCT", "COUNTRY", "SECTOR", "ADATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "INDX", limit: 4
    t.decimal "BETA", precision: 3, scale: 2
  end

  create_table "FRPBPFEE", primary_key: ["ACCT", "GROSS_SECTOR", "NET_SECTOR", "BPDATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "GROSS_SECTOR", limit: 4, null: false
    t.char "NET_SECTOR", limit: 4, null: false
    t.datetime "BPDATE", precision: nil, null: false
    t.decimal "ANN_BP_FEE", precision: 7, scale: 2
    t.char "BPACTIVE", limit: 1
  end

  create_table "FRPCALLC", primary_key: ["CALLOCID", "CSECTOR"], force: :cascade do |t|
    t.char "CALLOCID", limit: 3, null: false
    t.char "CSECTOR", limit: 4, null: false
    t.char "CSECTNEW", limit: 4
  end

  create_table "FRPCHAR", primary_key: ["SECDATE", "CID"], force: :cascade do |t|
    t.datetime "SECDATE", precision: nil, null: false
    t.char "CID", limit: 12, null: false
    t.varchar "TKRID", limit: 10
    t.decimal "PRICE", precision: 15, scale: 5
    t.varchar "MKTSECT", limit: 50
    t.decimal "DIVYLD", precision: 7, scale: 3
    t.decimal "ANNDIV", precision: 9, scale: 4
    t.datetime "EXDIVDT", precision: nil
    t.decimal "DVDLT", precision: 8, scale: 3
    t.decimal "EPS", precision: 7, scale: 2
    t.decimal "EPSHIGH", precision: 7, scale: 2
    t.decimal "EPSLOW", precision: 7, scale: 2
    t.decimal "PE", precision: 8, scale: 3
    t.decimal "PE1YR", precision: 7, scale: 2
    t.decimal "EPSGRWTH", precision: 7, scale: 2
    t.decimal "MKTCAP", precision: 13, scale: 3
    t.decimal "VOLUME", precision: 13, scale: 3
    t.decimal "LASTDIV", precision: 18, scale: 6
    t.decimal "WKHI52", precision: 10, scale: 4
    t.decimal "WKLO52", precision: 10, scale: 4
    t.decimal "ROE", precision: 12, scale: 7
    t.decimal "PBOOKVAL", precision: 7, scale: 2
    t.decimal "BETA", precision: 6, scale: 2
    t.decimal "PRCHGYTD", precision: 8, scale: 3
    t.decimal "PRCASH", precision: 7, scale: 2
    t.datetime "MATURITY", precision: nil
    t.decimal "ANNYLD", precision: 7, scale: 2
    t.decimal "YLDTMAT", precision: 7, scale: 2
    t.varchar "SPRATE", limit: 10
    t.decimal "DURATION", precision: 8, scale: 3
    t.varchar "INDUSTRY", limit: 10
    t.decimal "USERDEF1", precision: 10, scale: 3
    t.decimal "USERDEF2", precision: 10, scale: 3
    t.decimal "USERDEF3", precision: 10, scale: 3
    t.decimal "USERDEF4", precision: 10, scale: 3
    t.decimal "USERDEF5", precision: 10, scale: 3
    t.decimal "PEYTD", precision: 7, scale: 2
    t.decimal "PRCHG1YR", precision: 8, scale: 3
    t.decimal "BTR1000", precision: 14, scale: 2
    t.decimal "BTR1000G", precision: 14, scale: 2
    t.decimal "BTR1000V", precision: 14, scale: 2
    t.decimal "BTR2000", precision: 14, scale: 2
    t.decimal "BTR2000G", precision: 14, scale: 2
    t.decimal "BTR2000V", precision: 14, scale: 2
    t.decimal "BTR3000", precision: 14, scale: 2
    t.decimal "BTR3000G", precision: 14, scale: 2
    t.decimal "BTR3000V", precision: 14, scale: 2
    t.decimal "BTRMID", precision: 14, scale: 2
    t.decimal "BTRMIDG", precision: 14, scale: 2
    t.decimal "BTRMIDV", precision: 14, scale: 2
    t.decimal "BTMID", precision: 14, scale: 2
    t.decimal "BTSPBGI", precision: 14, scale: 2
    t.decimal "BTSPBVI", precision: 14, scale: 2
    t.decimal "BTSPSCI", precision: 14, scale: 2
    t.decimal "BTSPX", precision: 14, scale: 2
    t.decimal "DIVYLD5Y", precision: 14, scale: 2
    t.decimal "DIVGR5Y", precision: 14, scale: 2
    t.decimal "DIVYLDIR", precision: 14, scale: 2
    t.decimal "DIVPSANN", precision: 14, scale: 2
    t.decimal "EPS10YGR", precision: 14, scale: 2
    t.decimal "EPS3YGR", precision: 14, scale: 2
    t.decimal "EPS5YGR", precision: 14, scale: 2
    t.decimal "EPSCHGCF", precision: 14, scale: 2
    t.decimal "EPSLTM", precision: 14, scale: 2
    t.decimal "EPSLSTFY", precision: 14, scale: 2
    t.decimal "EPSCOFTM", precision: 14, scale: 2
    t.decimal "EPSCOCFY", precision: 14, scale: 2
    t.decimal "EPSCONFY", precision: 14, scale: 2
    t.decimal "EPSCLFY", precision: 14, scale: 2
    t.decimal "EPSNCF", precision: 14, scale: 2
    t.decimal "EPSNNFY", precision: 14, scale: 2
    t.decimal "EPSLTFG", precision: 14, scale: 2
    t.decimal "LTDTOTCP", precision: 20, scale: 8
    t.decimal "MGNGROSS", precision: 20, scale: 8
    t.decimal "MGNNP", precision: 20, scale: 8
    t.decimal "MGNOPER", precision: 20, scale: 8
    t.decimal "ROEQUITY", precision: 20, scale: 8
    t.decimal "MKTCAP2", precision: 19, scale: 4
    t.decimal "PEGRATIO", precision: 14, scale: 2
    t.decimal "PEFWD", precision: 14, scale: 2
    t.decimal "PECFY", precision: 14, scale: 2
    t.decimal "PENFY", precision: 14, scale: 2
    t.decimal "PELTM", precision: 14, scale: 2
    t.decimal "PE5YAVG", precision: 14, scale: 2
    t.decimal "PSBOOK", precision: 14, scale: 2
    t.decimal "PSCASHFL", precision: 14, scale: 2
    t.decimal "PSREV", precision: 14, scale: 2
    t.decimal "PSCFLTM", precision: 14, scale: 2
    t.decimal "PSEBITMG", precision: 14, scale: 2
    t.decimal "PB", precision: 14, scale: 2
    t.decimal "PRCF", precision: 14, scale: 2
    t.decimal "PRSALES", precision: 14, scale: 2
    t.decimal "COUPON", precision: 18, scale: 6
    t.datetime "CALLDATE", precision: nil
    t.decimal "CALLPRICE", precision: 18, scale: 6
    t.datetime "PUTDATE", precision: nil
    t.decimal "PUTPRICE", precision: 18, scale: 6
    t.index ["CID"], name: "IX_FRPCHAR_2"
  end

  create_table "FRPCHLST", primary_key: "CHARACTERISTIC", id: { type: :varchar, limit: 15 }, force: :cascade do |t|
    t.varchar "CHAR_DESC", limit: 35
    t.char "INV_TYPE", limit: 1, default: "E"
    t.varchar "UNITS", limit: 35
    t.varchar "RFORMAT", limit: 25
    t.char "IS_ALPHA", limit: 1, default: "N"
  end

  create_table "FRPCL2OP", primary_key: ["TARGET_THEME_ID", "CLASSIC_RPT_ID", "ONPOINT_RPT_ID", "ONPOINT_RPT_SEQ", "ONPOINT_SUB_RPT_SEQ"], force: :cascade do |t|
    t.integer "TARGET_THEME_ID", null: false
    t.integer "CLASSIC_RPT_ID", null: false
    t.integer "ONPOINT_RPT_ID", null: false
    t.integer "ONPOINT_RPT_SEQ", null: false
    t.integer "ONPOINT_SUB_RPT_SEQ", null: false
    t.varchar "CLASSIC_RPT_NAME", limit: 50
    t.varchar "ONPOINT_RPT_NAME", limit: 50
    t.varchar "PART1", limit: 20
    t.varchar "PART2", limit: 20
    t.varchar "SCREEN", limit: 20
    t.varchar "TYP", limit: 20
    t.char "MGMT", limit: 1
    t.char "BASE", limit: 1
    t.char "PORI", limit: 1
    t.integer "PAGENUMBER", limit: 1
    t.integer "RP_TIER", limit: 1
    t.char "RO_GRP2_IND", limit: 1
    t.char "MR_LAYOUT", limit: 8
    t.integer "MR_RPT_ID"
    t.integer "MR_RO2_GRP"
  end

  create_table "FRPCNTRY", primary_key: "COUNTRY", id: { type: :char, limit: 2 }, force: :cascade do |t|
    t.char "ISO", limit: 3, null: false
    t.varchar "CNAME", limit: 50
    t.char "REGION", limit: 1, default: " ", null: false
  end

  create_table "FRPCNTRYGRP", primary_key: ["GROUP_ID", "COUNTRY"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.char "COUNTRY", limit: 4, null: false
    t.integer "SORT"
  end

  create_table "FRPCOBAE", primary_key: ["ACCT", "COUNTRY", "ASOFDATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.decimal "POS", precision: 18, scale: 2
    t.decimal "NEG", precision: 18, scale: 2
    t.decimal "ENDMKT", precision: 18, scale: 2
    t.decimal "BEGMKT", precision: 18, scale: 2
    t.decimal "BAL", precision: 18, scale: 2
    t.index ["ASOFDATE"], name: "IX_FRPCOBAE_3"
  end

  create_table "FRPCOMP", primary_key: "COMP_ID", id: { type: :integer, limit: 1, default: nil }, force: :cascade do |t|
    t.varchar "COMP_DESC", limit: 100, null: false
    t.integer "COMP_TYPE", limit: 1
    t.integer "OBJECT_ID"
    t.varchar "VALTABLE", limit: 20
  end

  create_table "FRPCSTMR", primary_key: ["ACCT", "SEQNUM"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "SEQNUM", limit: 5, null: false
    t.varchar "NAME1", limit: 32
    t.varchar "NAME2", limit: 32
    t.varchar "NAME3", limit: 32
    t.varchar "NAME4", limit: 32
    t.varchar "NAME5", limit: 32
    t.varchar "ADDR1", limit: 100
    t.varchar "ADDR2", limit: 100
    t.varchar "ADDR3", limit: 100
    t.varchar "CITY", limit: 32
    t.varchar "STATE", limit: 32
    t.varchar "ZIP", limit: 9
    t.varchar "SHRTNAME", limit: 40
    t.varchar "BANKNAME", limit: 40
    t.varchar "OFFNAME", limit: 40
    t.varchar "OFFPHONE", limit: 32
    t.varchar "ADMNAME", limit: 40
    t.varchar "ADMPHONE", limit: 32
    t.varchar "TAXID", limit: 15
    t.datetime "STMTICP", precision: nil
  end

  create_table "FRPCTG", primary_key: ["CATEGORY", "CSECTOR"], force: :cascade do |t|
    t.char "CATEGORY", limit: 4, null: false
    t.char "CSECTOR", limit: 4, null: false
  end

  create_table "FRPCUSTCODE", primary_key: "PROGNAME", id: { type: :varchar, limit: 40 }, force: :cascade do |t|
    t.integer "GRPID", null: false
    t.varchar "PROGTITLE", limit: 100, null: false
    t.varchar "PROGDESC", limit: 1500, null: false
  end

  create_table "FRPCUSTGRPS", primary_key: "GRPID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "GRPTITLE", limit: 100, null: false
  end

  create_table "FRPCUSTVARS", primary_key: ["PROGNAME", "CNAME"], force: :cascade do |t|
    t.varchar "PROGNAME", limit: 40, null: false
    t.varchar "CNAME", limit: 50, null: false
    t.varchar "CID", limit: 50, null: false
    t.varchar "VARDESC", limit: 200
    t.varchar "CLABEL", limit: 100, null: false
    t.varchar "CTYPE", limit: 20, null: false
    t.varchar "CSTYLE", limit: 300
    t.integer "CPIXWIDTH", null: false
    t.integer "CMAXLENGTH", null: false
    t.varchar "CVALUE", limit: 200
    t.varchar "CCLASS", limit: 100
  end

  create_table "FRPDBLOG", primary_key: ["LOG_TIME", "SCRIPT_NAME", "LOG_POINT"], force: :cascade do |t|
    t.datetime "LOG_TIME", precision: nil, null: false
    t.varchar "SCRIPT_NAME", limit: 80, null: false
    t.varchar "LOG_POINT", limit: 80, null: false
    t.varchar "EXECUTED_BY", limit: 40, default: -> { "suser_sname()" }, null: false
  end

  create_table "FRPDIFRT", primary_key: "DIFSEC", id: { type: :char, limit: 4 }, force: :cascade do |t|
    t.char "WITHCAT", limit: 4, null: false
    t.char "WOCAT", limit: 4, null: false
    t.char "WRITBLNK", limit: 1, default: "N", null: false
  end

  create_table "FRPDRCTD", primary_key: ["AACCT", "HID"], force: :cascade do |t|
    t.varchar "AACCT", limit: 14, null: false
    t.char "HID", limit: 12, null: false
    t.char "HDIRECT1", limit: 4, null: false
    t.char "HDIRECT2", limit: 4
    t.char "HDIRECT3", limit: 4
    t.varchar "USEDEF", limit: 48
    t.datetime "DATETIME_STAMP", precision: nil, default: -> { "getdate()" }
  end

  create_table "FRPDWRR", primary_key: ["ACCT", "SECTOR", "ASOFDATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "SECTOR", limit: 4, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "REKTYPE", limit: 1
    t.decimal "RATE_RETURN1", precision: 10, scale: 6
    t.decimal "RATE_RETURN2", precision: 10, scale: 6
    t.decimal "RATE_RETURN3", precision: 10, scale: 6
    t.decimal "RATE_RETURN4", precision: 10, scale: 6
    t.decimal "RATE_RETURN5", precision: 10, scale: 6
    t.decimal "RATE_RETURN6", precision: 10, scale: 6
    t.decimal "RATE_RETURN7", precision: 10, scale: 6
    t.decimal "ENDMKT", precision: 18, scale: 2
    t.varchar "SRT", limit: 5
    t.varchar "SORINAME", limit: 50
    t.char "TYPE", limit: 1
  end

  create_table "FRPEVENT", id: false, force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.datetime "DATETIME_STAMP", precision: 7, null: false
    t.varchar "EVENT", limit: 500
    t.integer "BATCHID"
    t.integer "FUNC_ID"
    t.datetime "ASOFDATE", precision: nil
    t.datetime "BATCH_START", precision: 3
    t.integer "SEVERITY"
    t.index ["USER_ID", "DATETIME_STAMP"], name: "IX_FRPEVENT_1_2"
  end

  create_table "FRPEXCH", primary_key: ["XDATE", "ISOF", "ISOT", "TYP"], force: :cascade do |t|
    t.datetime "XDATE", precision: nil, null: false
    t.char "ISOF", limit: 3, null: false
    t.char "ISOT", limit: 3, null: false
    t.integer "TYP", limit: 2, default: 0, null: false
    t.decimal "XRATE", precision: 18, scale: 8
  end

  create_table "FRPFARPT", primary_key: ["RPT_ID", "USER_ID"], force: :cascade do |t|
    t.integer "RPT_ID", null: false
    t.varchar "USER_ID", limit: 20, null: false
    t.varchar "FA_USER_ID", limit: 20
    t.char "ACCT", limit: 14
    t.integer "FUNC_ID"
    t.varchar "BEGIN_DT", limit: 22
    t.varchar "END_DT", limit: 22
    t.char "DATE_TYPE", limit: 1
  end

  create_table "FRPFAUD", primary_key: ["ACCT", "ASOFDATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.varchar "SOURCE", limit: 20
    t.varchar "USER_ID", limit: 20
    t.datetime "DATE_STAMP", precision: nil
    t.char "TIME_STAMP", limit: 11
  end

  create_table "FRPFEES", primary_key: ["FEECODE", "TSECTOR"], force: :cascade do |t|
    t.char "FEECODE", limit: 30, null: false
    t.char "TSECTOR", limit: 4, null: false
    t.char "FSECTOR", limit: 4, null: false
    t.char "ASECTOR", limit: 4
  end

  create_table "FRPFILTR", primary_key: "FILTER", id: { type: :varchar, limit: 8 }, force: :cascade do |t|
    t.varchar "NAME", limit: 25
    t.char "DISPLAY", limit: 1
    t.integer "SORT"
    t.varchar "SHORTDAT", limit: 20
    t.varchar "BIGDAT", limit: 20
    t.integer "VAL_LENGTH", limit: 1
    t.integer "DESC_LENGTH", limit: 1
    t.varchar "SCREEN", limit: 20
    t.varchar "VALTABLE", limit: 20
    t.char "DESC_QUOTES", limit: 1, default: "Y"
  end

  create_table "FRPFIRM", primary_key: "ADATE", id: { type: :datetime, precision: nil }, force: :cascade do |t|
    t.decimal "MKT_VAL", precision: 18, scale: 2
  end

  create_table "FRPFLGRP", primary_key: ["GROUP_ID", "VAL_ID"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.integer "VAL_ID", null: false
  end

  create_table "FRPFLVAL", primary_key: "VAL_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "VALUE", limit: 14, null: false
    t.varchar "VAL_DESC", limit: 50
    t.varchar "FILTER", limit: 8, null: false
    t.integer "POSITION"
    t.index ["VALUE", "FILTER"], name: "IX_FRPFLVAL_2", unique: true
    t.check_constraint "[FILTER]='AGGTYP' AND [VALUE]='SUP' OR [FILTER]='AGGTYP' AND [VALUE]='WGT' OR [FILTER]<>'AGGTYP'", name: "CKC_FRPFLVAL"
  end

  create_table "FRPFNFLG", primary_key: ["FLAG_ID", "FUNC_ID"], force: :cascade do |t|
    t.varchar "FLAG_ID", limit: 20, null: false
    t.integer "FUNC_ID", null: false
  end

  create_table "FRPFOBAE", primary_key: ["ACCT", "ADATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.decimal "MKT1", precision: 18, scale: 2
    t.decimal "ACC1", precision: 18, scale: 2
    t.decimal "INC1", precision: 18, scale: 2
    t.decimal "NET1", precision: 18, scale: 2
  end

  create_table "FRPFOOTMAP", primary_key: ["RPT_THEME_ID", "ACCT_CLIENT_ID"], force: :cascade do |t|
    t.integer "RPT_THEME_ID", null: false
    t.char "ACCT_CLIENT_ID", limit: 14, null: false
    t.char "PKG_ID", limit: 3, null: false
    t.varchar "REASON", limit: 100
  end

  create_table "FRPFOOTPKG", primary_key: "PKG_ID", id: { type: :char, limit: 3 }, force: :cascade do |t|
    t.char "PKG_DESC", limit: 50, null: false
    t.decimal "FTNT_SX", precision: 5, scale: 3, null: false
    t.decimal "FTNT_SY", precision: 5, scale: 3, null: false
    t.decimal "FTNT_LX", precision: 5, scale: 3, null: false
    t.decimal "FTNT_LY", precision: 5, scale: 3, null: false
    t.char "FONT_FACE", limit: 20, null: false
    t.char "FONT_COLOR", limit: 11, null: false
    t.integer "FONT_SIZE", limit: 2, null: false
    t.varchar "FTNT_TXT", limit: 4095
    t.varchar "REASON", limit: 100
  end

  create_table "FRPGBR", primary_key: ["ACCT", "GOAL", "GOALVRSN"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "GOAL", limit: 10, null: false
    t.integer "GOALVRSN", null: false
    t.datetime "VRSNDATE", precision: nil
    t.char "SECTOR", limit: 4, null: false
    t.datetime "GOALSTARTDT", precision: nil
    t.datetime "GOALENDDT", precision: nil
    t.decimal "INFLATION_ASSUM", precision: 5, scale: 5
    t.decimal "RET_AT_GOAL_ASSUM", precision: 5, scale: 5
    t.decimal "START_BAL", precision: 18, scale: 2
    t.decimal "ANN_INC_SV", precision: 18, scale: 2
    t.decimal "ANN_INC_EV_INP", precision: 18, scale: 2
    t.decimal "ANN_INC_EV_CALC", precision: 18, scale: 2
    t.decimal "GOAL_CURVAL_INP", precision: 18, scale: 2
    t.decimal "GOAL_ENDVAL_INP", precision: 18, scale: 2
    t.decimal "GOAL_ENDVAL_CALC", precision: 18, scale: 2
    t.decimal "SPENDING_RATE", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_1", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_2", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_3", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_4", precision: 18, scale: 2
    t.decimal "MNTHLY_CONT_5", precision: 18, scale: 2
    t.char "RISK_MEASURE_1", limit: 4
    t.char "RISK_MEASURE_2", limit: 4
    t.char "RISK_MEASURE_3", limit: 4
    t.char "BENCH_1", limit: 4
    t.char "BENCH_2", limit: 4
    t.char "BENCH_3", limit: 4
    t.decimal "BENCH_TOLER_1", precision: 5, scale: 5
    t.decimal "BENCH_TOLER_2", precision: 5, scale: 5
    t.decimal "BENCH_TOLER_3", precision: 5, scale: 5
    t.decimal "TAXRT_INVEST", precision: 5, scale: 5
    t.decimal "TAXRT_INCOME", precision: 5, scale: 5
    t.decimal "REQ_ROR_GOALST", precision: 18, scale: 8
    t.decimal "REQ_ROR_FROM_ADATE", precision: 18, scale: 8
    t.datetime "LAST_RUN", precision: nil
    t.char "INFLATION_BENCH", limit: 4
    t.varchar "VRSNDESC", limit: 200
    t.char "REPORTGOAL", limit: 1
    t.decimal "ACCEL", precision: 5, scale: 5
  end

  create_table "FRPGLVAR", primary_key: "GL_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "GL_DESC", limit: 50, null: false
    t.varchar "GL_VAL", limit: 20
    t.varchar "GL_INPTYPE", limit: 15
    t.varchar "GL_INPVALS", limit: 50
  end

  create_table "FRPGOAL", primary_key: ["ACCT", "GOAL"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "GOAL", limit: 10, null: false
    t.varchar "GOAL_DESC", limit: 100
    t.char "GOAL_TYPE", limit: 2
  end

  create_table "FRPHIDUVR", primary_key: ["ACCT", "HID", "ADATE", "HDIRECT1", "HDIRECT2", "HDIRECT3"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "HID", limit: 12, null: false
    t.date "ADATE", null: false
    t.char "HDIRECT1", limit: 4, null: false
    t.char "HDIRECT2", limit: 4, null: false
    t.char "HDIRECT3", limit: 4, null: false
    t.decimal "PRVHUNITS", precision: 18, scale: 4
    t.decimal "TRUNITS", precision: 18, scale: 4
    t.decimal "HUNITS", precision: 18, scale: 4
    t.decimal "SPLITUNITS", precision: 18, scale: 4
    t.decimal "UTPRTOSPLIT", precision: 18, scale: 4
    t.integer "UNITSNOPRIN"
    t.decimal "TRANUNTB", precision: 18, scale: 4
    t.decimal "TRANPRNB", precision: 18, scale: 2
    t.decimal "TRANUNTS", precision: 18, scale: 4
    t.decimal "TRANPRNS", precision: 18, scale: 2
    t.decimal "DLUVR", precision: 11, scale: 6
    t.decimal "DLPUVR", precision: 11, scale: 6
    t.decimal "UVR", precision: 11, scale: 6
    t.decimal "PMKT", precision: 18, scale: 2
    t.decimal "PACC", precision: 18, scale: 2
    t.decimal "MKT", precision: 18, scale: 2
    t.decimal "INC", precision: 18, scale: 2
    t.decimal "ACC", precision: 18, scale: 2
    t.decimal "POS", precision: 18, scale: 2
    t.decimal "NEG", precision: 18, scale: 2
    t.decimal "RETPF", precision: 9, scale: 6
    t.decimal "RETNF", precision: 9, scale: 6
    t.decimal "PF", precision: 9, scale: 6
    t.decimal "NF", precision: 9, scale: 6
    t.decimal "SPOS2", precision: 18, scale: 2
    t.decimal "SWPOS", precision: 18, scale: 2
    t.decimal "SNEG2", precision: 18, scale: 2
    t.decimal "SWNEG", precision: 18, scale: 2
    t.decimal "DLUVRL", precision: 11, scale: 6
    t.decimal "DLPUVRL", precision: 11, scale: 6
    t.decimal "UVRL", precision: 11, scale: 6
    t.decimal "PMKTL", precision: 18, scale: 2
    t.decimal "PACCL", precision: 18, scale: 2
    t.decimal "MKTL", precision: 18, scale: 2
    t.decimal "INCL", precision: 18, scale: 2
    t.decimal "ACCL", precision: 18, scale: 2
    t.decimal "POSL", precision: 18, scale: 2
    t.decimal "NEGL", precision: 18, scale: 2
    t.decimal "RETPFL", precision: 9, scale: 6
    t.decimal "RETNFL", precision: 9, scale: 6
    t.decimal "PFL", precision: 9, scale: 6
    t.decimal "NFL", precision: 9, scale: 6
    t.decimal "SPOS2L", precision: 18, scale: 2
    t.decimal "SWPOSL", precision: 18, scale: 2
    t.decimal "SNEG2L", precision: 18, scale: 2
    t.decimal "SWNEGL", precision: 18, scale: 2
    t.decimal "UMTPOS", precision: 18, scale: 2
    t.decimal "UMTPOSL", precision: 18, scale: 2
    t.decimal "UMTNEG", precision: 18, scale: 2
    t.decimal "UMTNEGL", precision: 18, scale: 2
    t.decimal "TPOS", precision: 18, scale: 2
    t.decimal "TPOS2", precision: 18, scale: 2
    t.decimal "TWPOS", precision: 18, scale: 2
    t.decimal "TNEG", precision: 18, scale: 2
    t.decimal "TNEG2", precision: 18, scale: 2
    t.decimal "TWNEG", precision: 18, scale: 2
    t.decimal "HFACTOR", precision: 9, scale: 6
    t.integer "TSTFACTORS", limit: 2
    t.integer "CHGFACTORS", limit: 2
    t.char "ISSELLOUT", limit: 1
    t.char "ISBUYIN", limit: 1
    t.char "SHORTOPEN", limit: 1
    t.char "SHORTCLOSE", limit: 1
    t.decimal "SIGFLOWPCT", precision: 7, scale: 2
    t.decimal "SELLOUTPCT", precision: 7, scale: 2
    t.char "DAYSHLD", limit: 2
    t.decimal "FACTOR", precision: 18, scale: 2
    t.decimal "TOTPURCH", precision: 18, scale: 2
    t.decimal "TOTSALE", precision: 18, scale: 2
    t.decimal "TOTCONTR", precision: 18, scale: 2
    t.decimal "TOTDISTR", precision: 18, scale: 2
    t.decimal "TOTFR", precision: 18, scale: 2
    t.decimal "TOTFD", precision: 18, scale: 2
    t.decimal "TOTFEE", precision: 18, scale: 2
    t.decimal "TOTEXP", precision: 18, scale: 2
    t.decimal "TOTPURCHL", precision: 18, scale: 2
    t.decimal "TOTSALEL", precision: 18, scale: 2
    t.decimal "TOTCONTRL", precision: 18, scale: 2
    t.decimal "TOTDISTRL", precision: 18, scale: 2
    t.decimal "TOTFRL", precision: 18, scale: 2
    t.decimal "TOTFDL", precision: 18, scale: 2
    t.decimal "TOTFEEL", precision: 18, scale: 2
    t.decimal "TOTEXPL", precision: 18, scale: 2
    t.decimal "SHRT_RGAIN", precision: 18, scale: 2
    t.decimal "SHRT_RGAINL", precision: 18, scale: 2
    t.decimal "LONG_RGAIN", precision: 18, scale: 2
    t.decimal "LONG_RGAINL", precision: 18, scale: 2
    t.decimal "INC_DIV", precision: 18, scale: 2
    t.decimal "INC_DIVL", precision: 18, scale: 2
    t.decimal "INC_INT", precision: 18, scale: 2
    t.decimal "INC_INTL", precision: 18, scale: 2
    t.decimal "INC_STINT", precision: 18, scale: 2
    t.decimal "INC_STINTL", precision: 18, scale: 2
    t.decimal "INC_OTHER", precision: 18, scale: 2
    t.decimal "INC_OTHERL", precision: 18, scale: 2
    t.decimal "HCARRY", precision: 18, scale: 2
    t.decimal "HCARRYL", precision: 18, scale: 2
    t.decimal "PRVHCARRY", precision: 18, scale: 2
    t.decimal "PRVHCARRYL", precision: 18, scale: 2
    t.decimal "HPRINCIPAL", precision: 18, scale: 2
    t.decimal "HPRINCIPALL", precision: 18, scale: 2
    t.decimal "HACCRUAL", precision: 18, scale: 2
    t.decimal "HACCRUALL", precision: 18, scale: 2
    t.index ["ADATE"], name: "IX_FRPHIDUVR_3"
  end

  create_table "FRPHIDUVRD", primary_key: ["AACCT", "HID", "ADATE", "DDATE", "HDIRECT1", "HDIRECT2", "HDIRECT3"], force: :cascade do |t|
    t.char "AACCT", limit: 14, null: false
    t.char "HID", limit: 12, null: false
    t.date "ADATE", null: false
    t.date "DDATE", null: false
    t.char "HDIRECT1", limit: 4, null: false
    t.char "HDIRECT2", limit: 4, null: false
    t.char "HDIRECT3", limit: 4, null: false
    t.decimal "PMKT", precision: 19, scale: 2
    t.decimal "PACC", precision: 19, scale: 2
    t.decimal "MKT", precision: 19, scale: 2
    t.decimal "INC", precision: 19, scale: 2
    t.decimal "ACC", precision: 19, scale: 2
    t.decimal "POS", precision: 19, scale: 2
    t.decimal "NEG", precision: 19, scale: 2
    t.decimal "PF", precision: 15, scale: 6
    t.decimal "NF", precision: 15, scale: 6
    t.decimal "UVR", precision: 15, scale: 6
    t.decimal "PMKTL", precision: 19, scale: 2
    t.decimal "PACCL", precision: 19, scale: 2
    t.decimal "MKTL", precision: 19, scale: 2
    t.decimal "INCL", precision: 19, scale: 2
    t.decimal "ACCL", precision: 19, scale: 2
    t.decimal "POSL", precision: 19, scale: 2
    t.decimal "NEGL", precision: 19, scale: 2
    t.decimal "UVRL", precision: 15, scale: 6
    t.decimal "PRVUNITS", precision: 19, scale: 4
    t.decimal "TRDUNITS", precision: 19, scale: 4
    t.decimal "CURUNITS", precision: 19, scale: 4
    t.integer "HIDHELDTHISDAY"
    t.decimal "HIDPRICE", precision: 19, scale: 6
    t.decimal "HIDFACTOR", precision: 15, scale: 5
    t.decimal "HIDPRCFACTOR", precision: 15, scale: 2
    t.char "HIDSHORTCLOSE", limit: 1
    t.char "HIDSHORTOPEN", limit: 1
    t.char "HIDSELLOUT", limit: 1
    t.char "HIDBUYIN", limit: 1
    t.decimal "HIDFTOAXRATE", precision: 19, scale: 8
    t.decimal "HIDXRATE", precision: 19, scale: 8
    t.decimal "HIDXRATEPAY", precision: 19, scale: 8
    t.decimal "HIDTEXCHLOC", precision: 19, scale: 8
    t.decimal "HIDTEXCHPAY", precision: 19, scale: 8
    t.char "HIDCOUNTRY", limit: 2
  end

  create_table "FRPHIDXCL", primary_key: ["HID", "ADATE"], force: :cascade do |t|
    t.char "HID", limit: 12, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "XCODE", limit: 1
    t.integer "NUMACCTS"
    t.varchar "REASON", limit: 100
    t.varchar "USER_ID", limit: 20
    t.datetime "DATETIME_STAMP", precision: nil
  end

  create_table "FRPHOLD", primary_key: ["AACCT", "ADATE", "HID"], force: :cascade do |t|
    t.char "AACCT", limit: 14, null: false
    t.date "ADATE", null: false
    t.char "HID", limit: 12, null: false
    t.decimal "HUNITS", precision: 18, scale: 4
    t.char "HDIRECT1", limit: 4
    t.char "HDIRECT2", limit: 4
    t.char "HDIRECT3", limit: 4
    t.decimal "HPRINCIPAL", precision: 18, scale: 2
    t.decimal "HACCRUAL", precision: 18, scale: 2
    t.decimal "HCARRY", precision: 18, scale: 2
    t.datetime "HDATE", precision: nil
    t.decimal "HUNITST", precision: 18, scale: 4
    t.decimal "HPRINCIPALT", precision: 18, scale: 2
    t.decimal "HACCRUALT", precision: 18, scale: 2
    t.decimal "HCARRYL", precision: 18, scale: 2
    t.decimal "USERDEF1", precision: 18, scale: 2
    t.char "USERCHR1", limit: 4
    t.index ["HID"], name: "IX_FRPHOLD_3"
  end

  create_table "FRPIMG", primary_key: ["ACCT", "RPT_ID"], force: :cascade do |t|
    t.char "ACCT", limit: 14, default: "xxxxxxxxxxxxxx", null: false
    t.integer "RPT_ID", default: 0, null: false
    t.varchar "IMG_H_NM_P", limit: 30
    t.varchar "IMG_F_NM_P", limit: 30
    t.integer "IMG_H_SX", default: 0, null: false
    t.integer "IMG_H_SY", default: 0, null: false
    t.integer "IMG_H_LX", default: 0, null: false
    t.integer "IMG_H_LY", default: 0, null: false
    t.integer "IMG_F_SX", default: 0, null: false
    t.integer "IMG_F_SY", default: 0, null: false
    t.integer "IMG_F_LX", default: 0, null: false
    t.integer "IMG_F_LY", default: 0, null: false
  end

  create_table "FRPIMGMAP", primary_key: ["RPT_ID", "ACCT_CLIENT_ID"], force: :cascade do |t|
    t.integer "RPT_ID", null: false
    t.char "ACCT_CLIENT_ID", limit: 14, null: false
    t.char "PKG_ID", limit: 14, null: false
  end

  create_table "FRPIMGPKG", primary_key: ["PKG_ID", "GROUP_ID", "BORF", "IMG_ORDER"], force: :cascade do |t|
    t.char "PKG_ID", limit: 14, null: false
    t.integer "GROUP_ID", null: false
    t.char "BORF", limit: 1, null: false
    t.integer "IMG_ORDER", limit: 2, null: false
    t.varchar "IMG_NAME", limit: 132, null: false
    t.char "ACCT_PREFIX", limit: 1, default: "N", null: false
    t.char "UNITS", limit: 2, null: false
    t.decimal "IMG_HEIGHT", precision: 6, scale: 3, null: false
    t.decimal "IMG_WIDTH", precision: 6, scale: 3, null: false
    t.decimal "IMG_LOC_X", precision: 6, scale: 3, null: false
    t.decimal "IMG_LOC_Y", precision: 6, scale: 3, null: false
    t.char "KEEP_ASPECT_RATIO", limit: 1, null: false
  end

  create_table "FRPIMGPKGGRP", primary_key: ["GROUP_ID", "PKG_ID"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.char "PKG_ID", limit: 14, null: false
  end

  create_table "FRPINDX", primary_key: ["INDX", "IDATE"], force: :cascade do |t|
    t.char "INDX", limit: 4, null: false
    t.datetime "IDATE", precision: nil, null: false
    t.decimal "IPRICE", precision: 18, scale: 6
    t.decimal "IINC", precision: 18, scale: 2
    t.decimal "IRET", precision: 9, scale: 6
  end

  create_table "FRPINDX2", id: false, force: :cascade do |t|
    t.char "INDX", limit: 4, null: false
    t.datetime "IDATE", precision: nil, null: false
    t.decimal "IPRICE", precision: 18, scale: 6
    t.decimal "IINC", precision: 18, scale: 2
    t.decimal "IRET", precision: 9, scale: 6
  end

  create_table "FRPINDX3", id: false, force: :cascade do |t|
    t.char "INDX", limit: 4, null: false
    t.datetime "IDATE", precision: nil, null: false
    t.decimal "IPRICE", precision: 18, scale: 6
    t.decimal "IINC", precision: 18, scale: 2
    t.decimal "IRET", precision: 9, scale: 6
  end

  create_table "FRPINDXD", primary_key: ["INDX", "IDATE"], force: :cascade do |t|
    t.char "INDX", limit: 4, null: false
    t.datetime "IDATE", precision: nil, null: false
    t.decimal "IPRICE", precision: 18, scale: 6
    t.decimal "IINC", precision: 18, scale: 2
    t.decimal "IRET", precision: 9, scale: 6
    t.index ["IDATE"], name: "IX_FRPINDXD_2"
  end

  create_table "FRPIPKG1", primary_key: "PKG", id: { type: :char, limit: 3 }, force: :cascade do |t|
    t.char "MODELI1", limit: 4
    t.char "MODELI2", limit: 4
  end

  create_table "FRPIPKG2", primary_key: ["PKG", "INDICES"], force: :cascade do |t|
    t.char "PKG", limit: 3, null: false
    t.char "INDICES", limit: 4, null: false
    t.char "MSECTOR1", limit: 4
    t.char "MSECTOR2", limit: 4
    t.varchar "GINDEX", limit: 10
  end

  create_table "FRPIPP", primary_key: ["ACCT", "IPDATE", "SECTOR", "COUNTRY", "ADATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.date "IPDATE", null: false
    t.char "SECTOR", limit: 4, null: false
    t.char "COUNTRY", limit: 2, default: "00", null: false
    t.date "ADATE", null: false
    t.decimal "IPUVR", precision: 9, scale: 6
    t.decimal "IPMKT", precision: 18, scale: 2
    t.decimal "IPINC", precision: 18, scale: 2
    t.decimal "IPACC", precision: 18, scale: 2
    t.decimal "IPPF", precision: 11, scale: 6
    t.decimal "IPPOS", precision: 18, scale: 2
    t.decimal "IPNF", precision: 11, scale: 6
    t.decimal "IPNEG", precision: 18, scale: 2
    t.decimal "PMKT", precision: 18, scale: 2
    t.decimal "PACC", precision: 18, scale: 2
    t.decimal "DFLOWS", precision: 18, scale: 2
    t.decimal "IPUVRL", precision: 9, scale: 6
    t.datetime "DATESTMP", precision: nil, default: -> { "getdate()" }
  end

  create_table "FRPIPPH", primary_key: ["AACCT", "IPDATE", "ADATE", "HID", "HDIRECT1"], force: :cascade do |t|
    t.varchar "AACCT", limit: 14, null: false
    t.datetime "IPDATE", precision: nil, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "HID", limit: 12, null: false
    t.char "HDIRECT1", limit: 4, null: false
    t.decimal "HUNITS", precision: 18, scale: 4
    t.decimal "HPRINCIPAL", precision: 18, scale: 2
    t.decimal "HACCRUAL", precision: 18, scale: 2
    t.decimal "SPRICE", precision: 18, scale: 6
    t.char "PRICEFLAG", limit: 1
    t.decimal "PRIORMKT", precision: 18, scale: 2
    t.decimal "PRIORACC", precision: 18, scale: 2
    t.decimal "INCOME", precision: 18, scale: 2
    t.decimal "POS", precision: 18, scale: 2
    t.decimal "NEG", precision: 18, scale: 2
    t.decimal "PF", precision: 9, scale: 6
    t.decimal "NF", precision: 9, scale: 6
    t.decimal "UVR", precision: 9, scale: 6
    t.decimal "LSTHUNITS", precision: 18, scale: 4
    t.decimal "TRUNITS", precision: 18, scale: 4
    t.decimal "UVRL", precision: 9, scale: 6
    t.decimal "HACCRUALD31", precision: 20, scale: 2
  end

  create_table "FRPISO", primary_key: "ISO", id: { type: :char, limit: 3 }, force: :cascade do |t|
    t.varchar "ISONAME", limit: 50
    t.integer "ROUNDING", limit: 1
    t.varchar "C_STATUS", limit: 7
  end

  create_table "FRPLANGHCTXT", primary_key: ["FEX_NAME", "VAR_NAME"], force: :cascade do |t|
    t.string "FEX_NAME", limit: 60, null: false
    t.string "VAR_NAME", limit: 60, null: false
    t.string "SOURCE_TEXT", limit: 400, null: false
    t.string "DESCRIPTION", limit: 100
    t.index ["SOURCE_TEXT"], name: "IX_FRPLANGHCTXT_3"
  end

  create_table "FRPLANGTRANS", primary_key: ["SOURCE_TEXT", "LANG_ABBR"], force: :cascade do |t|
    t.string "SOURCE_TEXT", limit: 400, null: false, collation: "SQL_Latin1_General_CP1_CS_AS"
    t.nchar "LANG_ABBR", limit: 4, null: false
    t.string "TRANSLATION_TEXT", limit: 400
    t.index ["LANG_ABBR"], name: "IX_FRPLANGTRANS_2"
  end

  create_table "FRPLANGUAGES", primary_key: "LANG_ABBR", id: { type: :nchar, limit: 4 }, force: :cascade do |t|
    t.string "LANG_NAME", limit: 20, null: false
    t.nchar "RTOL_FLAG", limit: 1, default: "N", null: false
    t.nchar "IMPLEMENTED_FLAG", limit: 1, default: "N", null: false
  end

  create_table "FRPLOACCTUSER", primary_key: ["ACCT", "USER_ID"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.varchar "USER_ID", limit: 20, null: false
  end

  create_table "FRPLOBATCHNAME", primary_key: "BATCHID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "BATCHNAME", limit: 100, null: false
    t.char "BATCHTYPE", limit: 2
    t.index ["BATCHID", "BATCHNAME"], name: "UQ_FRPLOBATCHNAME", unique: true
  end

  create_table "FRPLOFLG", primary_key: "FLAG_ID", id: { type: :varchar, limit: 20 }, force: :cascade do |t|
    t.varchar "FLAG_FIELD", limit: 20, null: false
    t.varchar "RESET_VALUE", limit: 50, default: "P", null: false
    t.varchar "FAIL_VALUE", limit: 50, default: "R", null: false
  end

  create_table "FRPLOFNC", primary_key: ["BATCHID", "FUNC_ID"], force: :cascade do |t|
    t.integer "BATCHID", null: false
    t.integer "FUNC_ID", null: false
    t.varchar "FUNC_PROG", limit: 100
    t.varchar "PARMS", limit: 500
    t.varchar "FUNC_DESC", limit: 200
    t.varchar "FUNC_TYPE", limit: 20, default: "-"
    t.char "BASE", limit: 1
    t.integer "RUNORDER"
    t.integer "SECTOR_GROUP"
    t.integer "BMARK_GROUP"
    t.integer "RO_GROUP"
    t.integer "USE_SECTOR"
    t.integer "USE_BMARK"
    t.integer "USE_RO"
  end

  create_table "FRPLOPRM", primary_key: "USER_ID", id: { type: :varchar, limit: 20 }, force: :cascade do |t|
    t.datetime "ASOFDATE", precision: nil
    t.datetime "BEGDATE", precision: nil
    t.integer "OUTTYPE_ID", limit: 1
    t.char "ACCT", limit: 14
  end

  create_table "FRPMAP", primary_key: ["ACCT", "GL_ID"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.integer "GL_ID", null: false
    t.varchar "GL_VAL", limit: 20
  end

  create_table "FRPMEMO", primary_key: ["ACCT", "EDIT_DTTM"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "EDIT_DTTM", precision: nil, null: false
    t.varchar "USER_ID", limit: 20, null: false
    t.datetime "PROC_PERIOD", precision: nil, null: false
    t.varchar "MCOMMENT", limit: 500, null: false
  end

  create_table "FRPMENU", primary_key: "MENU_ID", id: :integer, default: nil, force: :cascade do |t|
    t.integer "SORTORDER", limit: 1, null: false
    t.integer "PARENT_ID"
    t.varchar "ACTION", limit: 400
    t.char "BASE", limit: 1, default: "N", null: false
    t.char "TYP", limit: 1, default: "I", null: false
  end

  create_table "FRPMIFID", primary_key: ["ACCT", "ALERT_DATE", "PCTG_BRK"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "ALERT_DATE", precision: nil, null: false
    t.integer "PCTG_BRK", null: false
    t.decimal "ALERT_UVR", precision: 11, scale: 6
    t.char "SECTOR", limit: 4
    t.char "FREQUENCY", limit: 1
  end

  create_table "FRPMLSI1", primary_key: ["COUNTRY", "SIFLAG", "SORI"], force: :cascade do |t|
    t.char "COUNTRY", limit: 2, null: false
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
    t.varchar "SORINAME", limit: 50
  end

  create_table "FRPMRGRP", primary_key: "GROUP_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "USER_ID", limit: 20
    t.integer "ACGRP_ID"
    t.integer "RPGRP_ID"
    t.integer "IGRP_ID"
    t.datetime "MR_ASOFDATE", precision: nil
    t.char "SCHD_IND", limit: 1
    t.varchar "GRP_USER_ID", limit: 20
    t.char "SENDTO_IND", limit: 1
    t.integer "OUTPUT_TYPE", limit: 1
    t.char "PGNUM_IND", limit: 1
    t.integer "PGNUM_START", limit: 1
    t.char "NDR_TYPE", limit: 1
    t.char "MR_TYPE", limit: 1, default: "U", null: false
    t.integer "NUM_LO_IDS", default: 1, null: false
    t.char "ID_MASKING", limit: 1, default: "N", null: false
    t.check_constraint "[ID_MASKING]='A' OR [ID_MASKING]='L' OR [ID_MASKING]='F' OR [ID_MASKING]='N'", name: "CKC_FRPMRGRP_ID_MASKING"
    t.check_constraint "[ID_MASKING]='A' OR [ID_MASKING]='L' OR [ID_MASKING]='F' OR [ID_MASKING]='N'", name: "ID_MASKING_CHK_VAL"
  end

  create_table "FRPMROUT", primary_key: ["USER_ID", "RFILENAME"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.varchar "RFILENAME", limit: 150, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.varchar "RPT_NAME", limit: 50, null: false
    t.char "ACCT", limit: 14
    t.datetime "MR_DTTM", precision: nil, null: false
    t.varchar "PORT_GRPNAME", limit: 50
    t.varchar "REPT_GRPNAME", limit: 50
    t.varchar "BMRK_GRPNAME", limit: 50
  end

  create_table "FRPOBJ", primary_key: "OBJECT_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "OBJECT_DESC", limit: 50
    t.integer "COMP_ID", limit: 1
  end

  create_table "FRPOUT", primary_key: "OUTTYPE_ID", id: { type: :integer, limit: 1, default: nil }, force: :cascade do |t|
    t.varchar "EXT_TYPE", limit: 5, null: false
    t.varchar "OUT_TYPE", limit: 10, null: false
    t.varchar "OUTTYPE_DESC", limit: 40, null: false
  end

  create_table "FRPPDFMGMT", primary_key: ["GROUP_ID", "RPT_ID", "CLIENT", "ACCT", "RO_GRP2"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.integer "RPT_ID", null: false
    t.varchar "CLIENT", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.integer "RO_GRP2", null: false
    t.integer "PR_SCOPE", limit: 1, null: false
    t.varchar "DESCRIPT", limit: 128
    t.varchar "PDFNAME", limit: 60, null: false
    t.char "THEMEBRD", limit: 1, null: false
  end

  create_table "FRPPOCH", id: false, force: :cascade do |t|
    t.char "AACCT", limit: 14, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.decimal "AVGMAT", precision: 18, scale: 2, null: false
    t.decimal "AVGYLD", precision: 18, scale: 2, null: false
    t.decimal "AVGCYLD", precision: 18, scale: 2, null: false
    t.decimal "AVGDUR", precision: 18, scale: 2, null: false
    t.char "AVGQUAL", limit: 6, null: false
  end

  create_table "FRPPOL", primary_key: ["ACCT", "BEGDT"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "BEGDT", precision: nil, null: false
    t.datetime "ENDDT", precision: nil
    t.integer "EQPOL"
    t.integer "FXPOL"
    t.integer "STPOL"
    t.char "EQCAT", limit: 4
    t.char "FXCAT", limit: 4
    t.char "STCAT", limit: 4
  end

  create_table "FRPPOLMAP", primary_key: ["PWMAP", "PWINDEX"], force: :cascade do |t|
    t.char "PWMAP", limit: 4, null: false
    t.char "PWINDEX", limit: 4, null: false
    t.varchar "F1_VALUE", limit: 30
    t.varchar "F2_VALUE", limit: 30
    t.varchar "F3_VALUE", limit: 30
    t.varchar "F4_VALUE", limit: 30
    t.varchar "F5_VALUE", limit: 30
    t.index ["PWMAP", "F1_VALUE", "F2_VALUE", "F3_VALUE", "F4_VALUE", "F5_VALUE"], name: "UQ_FRPPOLMAP", unique: true
  end

  create_table "FRPPRICE", primary_key: ["ID", "SDATE"], force: :cascade do |t|
    t.char "ID", limit: 12, null: false
    t.datetime "SDATE", precision: nil, null: false
    t.decimal "SPRICE", precision: 18, scale: 6
    t.datetime "DATESTMP", precision: nil, default: -> { "getdate()" }
    t.decimal "PRINFACT", precision: 11, scale: 8, default: 1.0
  end

  create_table "FRPPRICE2", id: false, force: :cascade do |t|
    t.varchar "ID", limit: 12, null: false
    t.datetime "SDATE", precision: nil, null: false
    t.decimal "SPRICE", precision: 18, scale: 6
    t.datetime "DATESTMP", precision: nil
    t.decimal "PRINFACT", precision: 11, scale: 8
  end

  create_table "FRPPUSE", primary_key: ["USER_ID", "LOGONDT"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.datetime "LOGONDT", precision: nil, default: -> { "getdate()" }, null: false
    t.char "PRODUCT_ID", limit: 3, null: false
  end

  create_table "FRPPWIX", primary_key: ["PWINDEX", "SDATE"], force: :cascade do |t|
    t.char "PWINDEX", limit: 4, null: false
    t.datetime "SDATE", precision: nil, null: false
    t.char "ACTIND", limit: 1, default: "Y", null: false
    t.char "INDEX01", limit: 4
    t.decimal "PWGHT01", precision: 5, scale: 2
    t.char "INDEX02", limit: 4
    t.decimal "PWGHT02", precision: 5, scale: 2
    t.char "INDEX03", limit: 4
    t.decimal "PWGHT03", precision: 5, scale: 2
    t.char "INDEX04", limit: 4
    t.decimal "PWGHT04", precision: 5, scale: 2
    t.char "INDEX05", limit: 4
    t.decimal "PWGHT05", precision: 5, scale: 2
    t.char "INDEX06", limit: 4
    t.decimal "PWGHT06", precision: 5, scale: 2
    t.char "INDEX07", limit: 4
    t.decimal "PWGHT07", precision: 5, scale: 2
    t.char "INDEX08", limit: 4
    t.decimal "PWGHT08", precision: 5, scale: 2
    t.char "INDEX09", limit: 4
    t.decimal "PWGHT09", precision: 5, scale: 2
    t.char "INDEX10", limit: 4
    t.decimal "PWGHT10", precision: 5, scale: 2
    t.char "INDEX11", limit: 4
    t.decimal "PWGHT11", precision: 5, scale: 2
    t.char "INDEX12", limit: 4
    t.decimal "PWGHT12", precision: 5, scale: 2
    t.char "INDEX13", limit: 4
    t.decimal "PWGHT13", precision: 5, scale: 2
    t.char "INDEX14", limit: 4
    t.decimal "PWGHT14", precision: 5, scale: 2
    t.char "INDEX15", limit: 4
    t.decimal "PWGHT15", precision: 5, scale: 2
    t.char "INDEX16", limit: 4
    t.decimal "PWGHT16", precision: 5, scale: 2
    t.char "INDEX17", limit: 4
    t.decimal "PWGHT17", precision: 5, scale: 2
    t.char "INDEX18", limit: 4
    t.decimal "PWGHT18", precision: 5, scale: 2
    t.char "INDEX19", limit: 4
    t.decimal "PWGHT19", precision: 5, scale: 2
    t.char "INDEX20", limit: 4
    t.decimal "PWGHT20", precision: 5, scale: 2
  end

  create_table "FRPRANGE", primary_key: ["RANGE_ID", "RANGE"], force: :cascade do |t|
    t.integer "RANGE_ID", limit: 2, null: false
    t.integer "RANGE", null: false
    t.decimal "RSTART", precision: 10, scale: 4, null: false
    t.decimal "REND", precision: 10, scale: 4, null: false
    t.varchar "RTITLE", limit: 25, null: false
  end

  create_table "FRPRGN", primary_key: ["REGION", "COUNTRY"], force: :cascade do |t|
    t.char "REGION", limit: 2, null: false
    t.char "COUNTRY", limit: 2, null: false
  end

  create_table "FRPRNGNM", primary_key: "RANGE_ID", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.varchar "CHARACTERISTIC", limit: 15
    t.varchar "STYLE", limit: 35
    t.varchar "RANGE_NAME", limit: 35
    t.varchar "USER_ID", limit: 20
  end

  create_table "FRPROGRP", primary_key: "GROUP_ID", id: :integer, default: nil, force: :cascade do |t|
    t.integer "RPT_ID", null: false
    t.char "FYE", limit: 1
    t.char "PORI", limit: 1
    t.char "RANKMGMT", limit: 1
    t.char "STP1", limit: 3
    t.char "STP2", limit: 3
    t.char "STP3", limit: 3
    t.char "STP4", limit: 3
    t.char "STP5", limit: 3
    t.char "STP6", limit: 3
    t.char "STP7", limit: 3
    t.integer "COLS", limit: 2
    t.char "FREQ", limit: 1
    t.char "SORTX", limit: 1
    t.varchar "SELECTX", limit: 8
    t.char "PIDIFF", limit: 1
    t.char "HDIRECT", limit: 1, default: "1"
    t.char "STPOPTION", limit: 1
  end

  create_table "FRPROGRP2", primary_key: ["GROUP_ID", "RPT_ID", "SUB_RPT_ID", "SUB_RPT_SEQ", "OPT_ID"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.integer "RPT_ID", null: false
    t.integer "SUB_RPT_ID", default: 0, null: false
    t.integer "SUB_RPT_SEQ", default: 0, null: false
    t.integer "OPT_ID", null: false
    t.varchar "VALUE", limit: 50
  end

  create_table "FRPRPCOL", primary_key: "COL_ID", id: :integer, default: nil, force: :cascade do |t|
    t.integer "RPT_ID", null: false
    t.varchar "COL_NAME", limit: 25, null: false
    t.varchar "COL_DESC", limit: 35
  end

  create_table "FRPRPGRP", primary_key: ["GROUP_ID", "RUNORDER"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.integer "RUNORDER", limit: 2, null: false
    t.integer "RPT_ID", null: false
    t.integer "RO_GRP"
    t.integer "SCT_GRP"
    t.char "MSECTOR", limit: 4
    t.char "MINDEX1", limit: 4
    t.char "MACCT", limit: 14
    t.char "SELECTED", limit: 1
    t.char "MINDEX2", limit: 4
    t.integer "RO_GRP2"
  end

  create_table "FRPRPKG1", primary_key: "REPTPKG", id: { type: :char, limit: 3 }, force: :cascade do |t|
    t.varchar "PKGDESC", limit: 30
  end

  create_table "FRPRPKG2", primary_key: ["REPTPKG", "RNUM"], force: :cascade do |t|
    t.char "REPTPKG", limit: 3, null: false
    t.char "RNUM", limit: 2, null: false
    t.varchar "TITLE", limit: 48
    t.varchar "STYLESHEET", limit: 8
    t.decimal "LMARGIN", precision: 4, scale: 2
    t.decimal "TMARGIN", precision: 4, scale: 2
    t.varchar "FOOTING", limit: 80
    t.varchar "ORIENTATION", limit: 10
    t.varchar "OPTION1", limit: 20
    t.varchar "OPTION2", limit: 20
    t.varchar "OPTION3", limit: 20
    t.varchar "PHASE1", limit: 8
    t.char "STP1", limit: 3
    t.char "STP2", limit: 3
    t.char "STP3", limit: 3
    t.char "STP4", limit: 3
    t.char "STP5", limit: 3
    t.char "STP6", limit: 3
    t.char "STP7", limit: 3
    t.char "FREQ", limit: 1
    t.char "COLUMNS", limit: 2
    t.char "MSECTOR", limit: 4
    t.datetime "ASOFDATEL", precision: nil
    t.datetime "FROMDATEL", precision: nil
    t.char "DIFF", limit: 1
    t.char "PRINC", limit: 1
    t.char "TOC", limit: 1
    t.char "INPKG", limit: 1
    t.char "RPTSORT", limit: 2
    t.varchar "FILLER1", limit: 10
    t.varchar "FILLER2", limit: 10
  end

  create_table "FRPRPTS", primary_key: "RPT_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "RPT_NAME", limit: 50, null: false
    t.varchar "PART1", limit: 20
    t.varchar "PART2", limit: 20
    t.varchar "PART3", limit: 20
    t.varchar "SCREEN", limit: 20
    t.varchar "TYP", limit: 20
    t.char "MGMT", limit: 1, default: "N", null: false
    t.char "BASE", limit: 1, default: "N", null: false
    t.char "FYE", limit: 1, default: "N", null: false
    t.char "PORI", limit: 1, default: "N", null: false
    t.char "RANKMGMT", limit: 1, default: "N", null: false
    t.char "RO_GRP_IND", limit: 1, default: "N", null: false
    t.char "SCT_GRP_IND", limit: 1, default: "N", null: false
    t.char "MSECTOR_IND", limit: 1, default: "N", null: false
    t.char "MINDEX1_IND", limit: 1, default: "N", null: false
    t.char "MINDEX2_IND", limit: 1, default: "N", null: false
    t.char "MACCT_IND", limit: 1, default: "N", null: false
    t.char "COLUMNSX_IND", limit: 1, default: "N", null: false
    t.char "FREQ_IND", limit: 1, default: "N", null: false
    t.char "PIDIFF_IND", limit: 1, default: "N", null: false
    t.integer "SPPCOLS", limit: 1, default: 0, null: false
    t.varchar "RPT_DEF1", limit: 15
    t.varchar "RPT_DEF2", limit: 15
    t.varchar "RPT_DEF3", limit: 15
    t.varchar "RPT_DEF4", limit: 15
    t.varchar "RPT_DEF5", limit: 15
    t.varchar "RPT_R_STYLE", limit: 8, default: "FRPRSTD4", null: false
    t.char "RPT_R_ORIENT", limit: 1, default: "L", null: false
    t.decimal "RPT_R_TM", precision: 5, scale: 2, default: 0.5, null: false
    t.decimal "RPT_R_BM", precision: 5, scale: 2, default: 0.5, null: false
    t.decimal "RPT_R_LM", precision: 5, scale: 2, default: 0.5, null: false
    t.decimal "RPT_R_RM", precision: 5, scale: 2, default: 0.5, null: false
    t.integer "RPT_R_INCR", default: 0, null: false
    t.decimal "RPT_R_C_INCR", precision: 5, scale: 1, default: 0.0, null: false
    t.varchar "RPT_H_HEAD", limit: 8, default: "FRPRSTD2", null: false
    t.char "RPT_H_JUSTF", limit: 6, default: "CENTER", null: false
    t.char "RPT_H_ACCTID", limit: 1, default: "N", null: false
    t.char "RPT_H_ACCT_S", limit: 1, default: "Y", null: false
    t.char "RPT_H_DATE", limit: 1, default: "B", null: false
    t.integer "RPT_H_INCR", default: 0, null: false
    t.varchar "RPT_F_FOOT", limit: 8, default: "FRPRSTD3", null: false
    t.char "RPT_F_DATE", limit: 1, default: "Y", null: false
    t.char "RPT_F_ACCTID", limit: 1, default: "Y", null: false
    t.char "RPT_F_RPT_ID", limit: 1, default: "N", null: false
    t.varchar "RPT_F_TEXT1", limit: 250
    t.varchar "RPT_F_TEXT2", limit: 250
    t.varchar "RPT_F_TEXT3", limit: 250
    t.varchar "RPT_F_TEXT4", limit: 250
    t.integer "RPT_F_T_INCR", default: 0, null: false
    t.char "RPT_F_T_SUP", limit: 1, default: "N", null: false
    t.char "RPT_NEG100", limit: 1, default: "N", null: false
    t.integer "PAGENUMBER", limit: 1, default: 1, null: false
    t.char "RO_HD_IND", limit: 1, default: "N", null: false
    t.integer "RP_TIER", limit: 1, default: 0, null: false
    t.char "RO_GRP2_IND", limit: 1, default: "N", null: false
    t.char "STPOPTION", limit: 1, default: "N", null: false
    t.char "MR_LAYOUT", limit: 8
    t.integer "MR_RPT_ID"
    t.integer "MR_RO2_GRP"
    t.integer "MR_SRC_RPT_ID"
  end

  create_table "FRPRPT_ASSOC", primary_key: ["RPT_ID", "SUB_RPT_ID", "SUB_RPT_SEQ", "OPT_ID"], force: :cascade do |t|
    t.integer "RPT_ID", null: false
    t.integer "SUB_RPT_ID", default: 0, null: false
    t.integer "SUB_RPT_SEQ", default: 0, null: false
    t.integer "OPT_ID", null: false
    t.varchar "DISP_NAME", limit: 50
    t.varchar "DEFAULT_VALUE", limit: 50
    t.integer "DISP_ORDER", limit: 2, default: 1
    t.integer "DISPGROUP_ID", default: 0, null: false
    t.char "DISP_MR", limit: 1, default: "Y", null: false
    t.char "DISP_RR", limit: 1, default: "Y", null: false
    t.varchar "OPT_NAME", limit: 20, null: false
  end

  create_table "FRPRPT_DISPGROUP", primary_key: "DISPGROUP_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "DISPGROUP_NAME", limit: 100
  end

  create_table "FRPRPT_DISPGROUP_ASSOC", primary_key: ["RPT_ID", "SUB_RPT_ID", "SUB_RPT_SEQ", "DISPGROUP_ID"], force: :cascade do |t|
    t.integer "RPT_ID", null: false
    t.integer "SUB_RPT_ID", null: false
    t.integer "SUB_RPT_SEQ", null: false
    t.integer "DISPGROUP_ID", null: false
    t.integer "DISPGROUP_ORDER", null: false
  end

  create_table "FRPRPT_OPT", primary_key: "OPT_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "OPT_TYPE", limit: 20, null: false
  end

  create_table "FRPRPT_OPT_TYPE", primary_key: "OPT_TYPE", id: { type: :varchar, limit: 20 }, force: :cascade do |t|
    t.varchar "VAL_DESC", limit: 50
    t.varchar "DISP_TYPE", limit: 20
  end

  create_table "FRPRTSS1", primary_key: ["USER_ID", "ASOFDATE", "ACCOUNT", "TYPE", "SECTOR"], force: :cascade do |t|
    t.char "USER_ID", limit: 20, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "ACCOUNT", limit: 14, null: false
    t.char "TYPE", limit: 1, null: false
    t.char "SECTOR", limit: 2, null: false
    t.char "SORT", limit: 5
    t.datetime "PRIORDATE", precision: nil
    t.decimal "MKTVAL", precision: 15, scale: 2
    t.decimal "PREVMKTVAL", precision: 15, scale: 2
    t.char "SECTORNAME", limit: 50
    t.char "CATEGNAME", limit: 30
    t.char "GINDEX", limit: 30
    t.integer "ICPMNTHS"
    t.decimal "STP1", precision: 8, scale: 2
    t.decimal "STP2", precision: 8, scale: 2
    t.decimal "STP3", precision: 8, scale: 2
    t.decimal "STP4", precision: 8, scale: 2
    t.decimal "STP5", precision: 8, scale: 2
    t.decimal "STP6", precision: 8, scale: 2
    t.decimal "STP7", precision: 8, scale: 2
    t.integer "CM1"
    t.integer "CM2"
    t.integer "CM3"
    t.integer "CM4"
    t.integer "CM5"
    t.integer "CM6"
    t.integer "CM7"
  end

  create_table "FRPRTSS2", primary_key: ["USER_ID", "ASOFDATE", "ACCOUNT", "TYPE", "SECTOR", "TPCOL"], force: :cascade do |t|
    t.char "USER_ID", limit: 20, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "ACCOUNT", limit: 14, null: false
    t.char "TYPE", limit: 1, null: false
    t.char "SECTOR", limit: 2, null: false
    t.char "TPCOL", limit: 3, null: false
    t.integer "RTITLE"
    t.decimal "THERETURN", precision: 15, scale: 2
  end

  create_table "FRPRUSE", primary_key: ["USER_ID", "RUNDT", "PRODUCT_ID"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.datetime "RUNDT", precision: nil, default: -> { "getdate()" }, null: false
    t.char "PRODUCT_ID", limit: 3, null: false
    t.integer "RPT_ID", null: false
    t.char "ACCT", limit: 14, null: false
  end

  create_table "FRPSBSGRP", primary_key: ["GROUP_ID", "SIFLAG", "SORI", "MAJSORT", "MINSORT"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
    t.integer "MAJSORT", null: false
    t.integer "MINSORT", null: false
    t.char "SCTLINK", limit: 4
    t.char "CTYLINK", limit: 2, null: false
    t.index ["GROUP_ID", "MAJSORT", "MINSORT"], name: "IX_FRPSBSGRP_1", unique: true
  end

  create_table "FRPSEC", primary_key: "ID", id: { type: :char, limit: 12 }, force: :cascade do |t|
    t.varchar "TICKER", limit: 10
    t.char "CUSIP", limit: 9
    t.varchar "NAMETKR", limit: 50
    t.char "ISIN", limit: 12
    t.varchar "NAMEDESC", limit: 50
    t.varchar "ASSETTYPE", limit: 9
    t.char "SCATEGORY", limit: 4
    t.char "SSECTOR", limit: 4
    t.char "SINDUSTRY", limit: 4
    t.decimal "FACTOR", precision: 18, scale: 2
    t.decimal "BETA", precision: 18, scale: 3
    t.decimal "CURPRICE", precision: 18, scale: 6
    t.decimal "FRIPRICE", precision: 18, scale: 6
    t.decimal "MTDPRICE", precision: 18, scale: 6
    t.varchar "QUALITY", limit: 6
    t.datetime "MATURITY", precision: nil
    t.decimal "COUPON", precision: 18, scale: 6
    t.decimal "ANNDIV", precision: 18, scale: 6
    t.decimal "YIELD", precision: 18, scale: 6
    t.datetime "CALLDATE", precision: nil
    t.datetime "PUTDATE", precision: nil
    t.datetime "IDATE", precision: nil
    t.datetime "LASTDATE", precision: nil
    t.datetime "NEXTDATE", precision: nil
    t.integer "FPAYDATE"
    t.integer "SPAYDATE"
    t.datetime "FCPNDATE", precision: nil
    t.datetime "XDIVDATE", precision: nil
    t.datetime "PADATE", precision: nil
    t.char "PAFREQ", limit: 2
    t.char "ACCRTYPE", limit: 2
    t.char "HCATEGORY", limit: 4
    t.char "SSECTOR2", limit: 4
    t.char "SSECTOR3", limit: 4
    t.char "TAXABLEI", limit: 2
    t.char "SSTATE", limit: 2
    t.char "COUNTRY", limit: 2, default: "US"
    t.char "ISSCNTRY", limit: 2
    t.char "PAYCURR", limit: 3
    t.decimal "DAYFACTOR", precision: 9, scale: 6
    t.char "SKIPLOG", limit: 1
    t.varchar "QUALITY2", limit: 6
    t.decimal "CALLPRICE", precision: 18, scale: 6
    t.decimal "PUTPRICE", precision: 18, scale: 6
    t.char "SKIPUOOB", limit: 1, default: " "
    t.char "BMRK_ID", limit: 4
    t.char "MWRR_FLAG", limit: 1
    t.varchar "USERAN1", limit: 50
    t.varchar "USERAN2", limit: 50
    t.varchar "USERAN3", limit: 50
    t.varchar "USERAN4", limit: 50
    t.varchar "USERAN5", limit: 50
    t.varchar "USERAN6", limit: 10
    t.index ["NAMETKR"], name: "IX_FRPSEC_4"
  end

  create_table "FRPSECTR", primary_key: ["ACCT", "COUNTRY", "SECTOR", "ADATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "COUNTRY", limit: 2, default: "00", null: false
    t.char "SECTOR", limit: 4, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.decimal "UVR", precision: 9, scale: 6
    t.decimal "MKT", precision: 18, scale: 2
    t.decimal "INC", precision: 18, scale: 2
    t.decimal "ACC", precision: 18, scale: 2
    t.decimal "POL", precision: 9, scale: 2
    t.decimal "POS", precision: 18, scale: 2
    t.decimal "NEG", precision: 18, scale: 2
    t.decimal "PF", precision: 9, scale: 6
    t.decimal "NF", precision: 9, scale: 6
    t.char "STATUS", limit: 2
    t.char "SRCFREQ", limit: 1, default: "M", null: false
    t.integer "SRCTOL", limit: 1, default: 0, null: false
    t.decimal "UVRL", precision: 9, scale: 6
    t.decimal "LINKUVR", precision: 18, scale: 6
    t.integer "LINKCK", limit: 1
    t.datetime "DATESTMP", precision: nil, default: -> { "getdate()" }
    t.decimal "PMKT", precision: 18, scale: 2
    t.decimal "PACC", precision: 18, scale: 2
    t.decimal "DFLOWS", precision: 18, scale: 2
    t.index ["ADATE", "ACCT", "UVR"], name: "IX_FRPSECTR_4_1_5"
    t.index ["ADATE", "SECTOR"], name: "IX_FRPSECTR_4_3"
  end

  create_table "FRPSI1", primary_key: ["SIFLAG", "SORI"], force: :cascade do |t|
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
    t.varchar "SORINAME", limit: 50
    t.char "TFSEC", limit: 1
    t.char "OPT", limit: 1
    t.char "EXC", limit: 1
    t.char "CSH", limit: 1
    t.varchar "SRT", limit: 5
    t.varchar "CATNAME", limit: 30
    t.varchar "GINDEX", limit: 30
    t.varchar "EXTRA2", limit: 30
    t.char "SSFCHK", limit: 1
    t.char "TAXOFFSET", limit: 4
    t.varchar "TYP", limit: 20
    t.decimal "DAYFACTOR", precision: 9, scale: 6
    t.varchar "COLOR", limit: 20
    t.varchar "SHORTNAME", limit: 20
    t.char "BMCOUNTRY", limit: 2, null: false
    t.char "HDX", limit: 1
    t.varchar "SI1USER1", limit: 10
    t.varchar "SI1USER2", limit: 10
    t.varchar "SI1USER3", limit: 10
    t.varchar "SI1USER4", limit: 10
    t.varchar "SI1USER5", limit: 10
    t.integer "SB_TIER", limit: 1, default: 0, null: false
    t.char "TOTCTG", limit: 4
    t.char "XPLUGFACTOR", limit: 1
    t.char "BRCFREQ", limit: 1
    t.char "GBR_FLAG", limit: 1
    t.char "MWRR_FLAG", limit: 1, default: "N"
    t.check_constraint "[MWRR_FLAG]='N' OR [MWRR_FLAG]='Y'", name: "CKC_FRPSI1_MWRR_FLAG"
  end

  create_table "FRPSI2", primary_key: ["SIFLAG", "SORI", "PKGID", "BLDATE"], force: :cascade do |t|
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
    t.char "PKGID", limit: 4, null: false
    t.datetime "BLDATE", precision: nil, default: '01-01-1970 00:00:00.0', null: false
    t.char "SINDEX", limit: 4
    t.char "BLACTIVE", limit: 1, default: "Y"
  end

  create_table "FRPSICP", primary_key: ["ACCT", "COUNTRY", "SECTOR", "SICP_DATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.datetime "SICP_DATE", precision: nil, null: false
  end

  create_table "FRPSIGRP", primary_key: ["GROUP_ID", "SIFLAG", "SORI"], force: :cascade do |t|
    t.integer "GROUP_ID", null: false
    t.char "SIFLAG", limit: 1, null: false
    t.char "SORI", limit: 4, null: false
  end

  create_table "FRPSLACT_BAMINI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_BMEHRZAD", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_FAHMADIAN", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_HMEHRABAN", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_MJAFARI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_NRAHIM", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_QAGUEST1", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_SAMINI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_SHUSSAINI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_SKARIMI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_WAMIRZADA", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSLACT_ZKARIMI", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "SLT", limit: 1, null: false
  end

  create_table "FRPSMGMT", primary_key: ["SM_USER_ID", "SM_USER_GRP", "SM_RPT_ID"], force: :cascade do |t|
    t.varchar "SM_USER_ID", limit: 20, null: false
    t.varchar "SM_USER_GRP", limit: 20, null: false
    t.integer "SM_RPT_ID", null: false
    t.integer "SM_RO2_ID", null: false
    t.index ["SM_RO2_ID"], name: "UQ_FRPSMGMT_4", unique: true
    t.index ["SM_RPT_ID"], name: "IX_FRPSMGMT_2"
  end

  create_table "FRPSRTS", primary_key: ["ACCOUNT", "ASOFDATE", "COUNTRY", "SECTOR", "TYPE", "BORL"], force: :cascade do |t|
    t.char "ACCOUNT", limit: 14, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "COUNTRY", limit: 2, default: "00", null: false
    t.char "SECTOR", limit: 4, null: false
    t.char "TYPE", limit: 1, null: false
    t.char "BORL", limit: 1, null: false
    t.char "SORT", limit: 5
    t.datetime "PRIORDATE", precision: nil
    t.decimal "MKTVAL", precision: 18, scale: 2
    t.decimal "PREVMKTVAL", precision: 18, scale: 2
    t.char "SECTORNAME", limit: 50
    t.char "CATEGNAME", limit: 30
    t.decimal "YEAR12", precision: 18, scale: 2
    t.decimal "YEAR11", precision: 18, scale: 2
    t.decimal "YEAR10", precision: 18, scale: 2
    t.decimal "YEAR9", precision: 18, scale: 2
    t.decimal "YEAR8", precision: 18, scale: 2
    t.decimal "YEAR7", precision: 18, scale: 2
    t.decimal "YEAR6", precision: 18, scale: 2
    t.decimal "YEAR5", precision: 18, scale: 2
    t.decimal "YEAR4", precision: 18, scale: 2
    t.decimal "YEAR3", precision: 18, scale: 2
    t.decimal "YEAR2", precision: 18, scale: 2
    t.decimal "YEAR1", precision: 18, scale: 2
    t.decimal "QTR4", precision: 18, scale: 2
    t.decimal "QTR3", precision: 18, scale: 2
    t.decimal "LASTQTR", precision: 18, scale: 2
    t.decimal "CURRENTQTR", precision: 18, scale: 2
    t.decimal "ITD", precision: 18, scale: 2
    t.decimal "MTH1", precision: 18, scale: 2
    t.decimal "MTH2", precision: 18, scale: 2
    t.decimal "MTH3", precision: 18, scale: 2
    t.decimal "MTH4", precision: 18, scale: 2
    t.decimal "MTH5", precision: 18, scale: 2
    t.decimal "MTH6", precision: 18, scale: 2
    t.decimal "MTH7", precision: 18, scale: 2
    t.decimal "MTH8", precision: 18, scale: 2
    t.decimal "MTH9", precision: 18, scale: 2
    t.decimal "MTH10", precision: 18, scale: 2
    t.decimal "MTH11", precision: 18, scale: 2
    t.decimal "MTH12", precision: 18, scale: 2
    t.decimal "MTH18", precision: 18, scale: 2
    t.decimal "MTH24", precision: 18, scale: 2
    t.decimal "MTH36", precision: 18, scale: 2
    t.decimal "MTH48", precision: 18, scale: 2
    t.decimal "MTH60", precision: 18, scale: 2
    t.decimal "MTH72", precision: 18, scale: 2
    t.decimal "MTH84", precision: 18, scale: 2
    t.decimal "MTH96", precision: 18, scale: 2
    t.decimal "MTH108", precision: 18, scale: 2
    t.decimal "MTH120", precision: 18, scale: 2
    t.decimal "MTH180", precision: 18, scale: 2
    t.decimal "MTH240", precision: 18, scale: 2
    t.char "GINDEX", limit: 30
    t.char "ICPMNTHS", limit: 3
    t.decimal "YEAR12FTD", precision: 18, scale: 2
    t.decimal "YEAR11FTD", precision: 18, scale: 2
    t.decimal "YEAR10FTD", precision: 18, scale: 2
    t.decimal "YEAR9FTD", precision: 18, scale: 2
    t.decimal "YEAR8FTD", precision: 18, scale: 2
    t.decimal "YEAR7FTD", precision: 18, scale: 2
    t.decimal "YEAR6FTD", precision: 18, scale: 2
    t.decimal "YEAR5FTD", precision: 18, scale: 2
    t.decimal "YEAR4FTD", precision: 18, scale: 2
    t.decimal "YEAR3FTD", precision: 18, scale: 2
    t.decimal "YEAR2FTD", precision: 18, scale: 2
    t.decimal "YEAR1FTD", precision: 18, scale: 2
    t.decimal "PREVQTR1", precision: 18, scale: 2
    t.decimal "PREVQTR2", precision: 18, scale: 2
    t.decimal "PREVQTR3", precision: 18, scale: 2
    t.decimal "CSI", precision: 18, scale: 4
    t.char "AGGTYP", limit: 3
    t.decimal "QTD", precision: 18, scale: 2
    t.decimal "FQD", precision: 18, scale: 2
    t.index ["ASOFDATE"], name: "IX_FRPSRTS_2"
    t.index ["SECTOR"], name: "IX_FRPSRTS_4"
  end

  create_table "FRPSTYLE", primary_key: "STYLE", id: { type: :varchar, limit: 35 }, force: :cascade do |t|
    t.char "INV_TYPE", limit: 1, default: "E"
  end

  create_table "FRPSURVEY", primary_key: ["USER_ID", "DATETIME_STAMP"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.datetime "DATETIME_STAMP", precision: nil, default: -> { "getdate()" }, null: false
    t.varchar_max "COMMENTS"
    t.char "FOLLOWUP", limit: 1
  end

  create_table "FRPSVAL", primary_key: ["ACCT", "TODATE", "SECTOR", "BORL"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.datetime "TODATE", precision: nil, null: false
    t.char "SECTOR", limit: 2, null: false
    t.char "BORL", limit: 1, null: false
    t.decimal "QTR4AGOBMV", precision: 18, scale: 2
    t.decimal "QTR4AGOBACC", precision: 18, scale: 2
    t.decimal "MONTH12BACC", precision: 18, scale: 2
    t.decimal "MONTH36BACC", precision: 18, scale: 2
    t.decimal "MONTH60BACC", precision: 18, scale: 2
    t.decimal "MONTH120BACC", precision: 18, scale: 2
    t.decimal "MONTH84BACC", precision: 18, scale: 2
    t.decimal "MONTH1BACC", precision: 18, scale: 2
    t.decimal "MONTH240BACC", precision: 18, scale: 2
    t.decimal "ITDBACC", precision: 18, scale: 2
    t.decimal "YRSAGO12BACC", precision: 18, scale: 2
    t.decimal "MONTH12BMV", precision: 18, scale: 2
    t.decimal "MONTH36BMV", precision: 18, scale: 2
    t.decimal "MONTH60BMV", precision: 18, scale: 2
    t.decimal "MONTH120BMV", precision: 18, scale: 2
    t.decimal "MONTH84BMV", precision: 18, scale: 2
    t.decimal "MONTH1BMV", precision: 18, scale: 2
    t.decimal "MONTH240BMV", precision: 18, scale: 2
    t.decimal "ITDBMV", precision: 18, scale: 2
    t.decimal "YRSAGO12BMV", precision: 18, scale: 2
    t.decimal "ASOFEMV", precision: 18, scale: 2
    t.decimal "LASTQTREMV", precision: 18, scale: 2
    t.decimal "QTR3AGOEMV", precision: 18, scale: 2
    t.decimal "QTR4AGOEMV", precision: 18, scale: 2
    t.decimal "LASTYREMV", precision: 18, scale: 2
    t.decimal "YRSAGO3EMV", precision: 18, scale: 2
    t.decimal "YRSAGO4EMV", precision: 18, scale: 2
    t.decimal "YRSAGO5EMV", precision: 18, scale: 2
    t.decimal "YRSAGO6EMV", precision: 18, scale: 2
    t.decimal "YRSAGO7EMV", precision: 18, scale: 2
    t.decimal "YRSAGO8EMV", precision: 18, scale: 2
    t.decimal "YRSAGO9EMV", precision: 18, scale: 2
    t.decimal "YRSAGO10EMV", precision: 18, scale: 2
    t.decimal "YRSAGO11EMV", precision: 18, scale: 2
    t.decimal "YRSAGO12EMV", precision: 18, scale: 2
    t.decimal "ASOFACC", precision: 18, scale: 2
    t.decimal "LASTQTRACC", precision: 18, scale: 2
    t.decimal "QTR3AGOACC", precision: 18, scale: 2
    t.decimal "QTR4AGOACC", precision: 18, scale: 2
    t.decimal "LASTYRACC", precision: 18, scale: 2
    t.decimal "YRSAGO3ACC", precision: 18, scale: 2
    t.decimal "YRSAGO4ACC", precision: 18, scale: 2
    t.decimal "YRSAGO5ACC", precision: 18, scale: 2
    t.decimal "YRSAGO6ACC", precision: 18, scale: 2
    t.decimal "YRSAGO7ACC", precision: 18, scale: 2
    t.decimal "YRSAGO8ACC", precision: 18, scale: 2
    t.decimal "YRSAGO9ACC", precision: 18, scale: 2
    t.decimal "YRSAGO10ACC", precision: 18, scale: 2
    t.decimal "YRSAGO11ACC", precision: 18, scale: 2
    t.decimal "YRSAGO12ACC", precision: 18, scale: 2
    t.decimal "CURQTRRCV", precision: 18, scale: 2
    t.decimal "LASTQTRRCV", precision: 18, scale: 2
    t.decimal "QTR3AGORCV", precision: 18, scale: 2
    t.decimal "QTR4AGORCV", precision: 18, scale: 2
    t.decimal "MONTH12RCV", precision: 18, scale: 2
    t.decimal "MONTH36RCV", precision: 18, scale: 2
    t.decimal "MONTH60RCV", precision: 18, scale: 2
    t.decimal "MONTH120RCV", precision: 18, scale: 2
    t.decimal "MONTH84RCV", precision: 18, scale: 2
    t.decimal "MONTH1RCV", precision: 18, scale: 2
    t.decimal "MONTH240RCV", precision: 18, scale: 2
    t.decimal "ITDRCV", precision: 18, scale: 2
    t.decimal "CURRENTYRRCV", precision: 18, scale: 2
    t.decimal "LASTYRRCV", precision: 18, scale: 2
    t.decimal "YRSAGO3RCV", precision: 18, scale: 2
    t.decimal "YRSAGO4RCV", precision: 18, scale: 2
    t.decimal "YRSAGO5RCV", precision: 18, scale: 2
    t.decimal "YRSAGO6RCV", precision: 18, scale: 2
    t.decimal "YRSAGO7RCV", precision: 18, scale: 2
    t.decimal "YRSAGO8RCV", precision: 18, scale: 2
    t.decimal "YRSAGO9RCV", precision: 18, scale: 2
    t.decimal "YRSAGO10RCV", precision: 18, scale: 2
    t.decimal "YRSAGO11RCV", precision: 18, scale: 2
    t.decimal "YRSAGO12RCV", precision: 18, scale: 2
    t.decimal "CURQTRCON", precision: 18, scale: 2
    t.decimal "LASTQTRCON", precision: 18, scale: 2
    t.decimal "QTR3AGOCON", precision: 18, scale: 2
    t.decimal "QTR4AGOCON", precision: 18, scale: 2
    t.decimal "MONTH12CON", precision: 18, scale: 2
    t.decimal "MONTH36CON", precision: 18, scale: 2
    t.decimal "MONTH60CON", precision: 18, scale: 2
    t.decimal "MONTH120CON", precision: 18, scale: 2
    t.decimal "MONTH84CON", precision: 18, scale: 2
    t.decimal "MONTH1CON", precision: 18, scale: 2
    t.decimal "MONTH240CON", precision: 18, scale: 2
    t.decimal "ITDCON", precision: 18, scale: 2
    t.decimal "CURRENTYRCON", precision: 18, scale: 2
    t.decimal "LASTYRCON", precision: 18, scale: 2
    t.decimal "YRSAGO3CON", precision: 18, scale: 2
    t.decimal "YRSAGO4CON", precision: 18, scale: 2
    t.decimal "YRSAGO5CON", precision: 18, scale: 2
    t.decimal "YRSAGO6CON", precision: 18, scale: 2
    t.decimal "YRSAGO7CON", precision: 18, scale: 2
    t.decimal "YRSAGO8CON", precision: 18, scale: 2
    t.decimal "YRSAGO9CON", precision: 18, scale: 2
    t.decimal "YRSAGO10CON", precision: 18, scale: 2
    t.decimal "YRSAGO11CON", precision: 18, scale: 2
    t.decimal "YRSAGO12CON", precision: 18, scale: 2
    t.decimal "CURQTRWIT", precision: 18, scale: 2
    t.decimal "LASTQTRWIT", precision: 18, scale: 2
    t.decimal "QTR3AGOWIT", precision: 18, scale: 2
    t.decimal "QTR4AGOWIT", precision: 18, scale: 2
    t.decimal "MONTH12WIT", precision: 18, scale: 2
    t.decimal "MONTH36WIT", precision: 18, scale: 2
    t.decimal "MONTH60WIT", precision: 18, scale: 2
    t.decimal "MONTH120WIT", precision: 18, scale: 2
    t.decimal "MONTH84WIT", precision: 18, scale: 2
    t.decimal "MONTH1WIT", precision: 18, scale: 2
    t.decimal "MONTH240WIT", precision: 18, scale: 2
    t.decimal "ITDWIT", precision: 18, scale: 2
    t.decimal "CURRENTYRWIT", precision: 18, scale: 2
    t.decimal "LASTYRWIT", precision: 18, scale: 2
    t.decimal "YRSAGO3WIT", precision: 18, scale: 2
    t.decimal "YRSAGO4WIT", precision: 18, scale: 2
    t.decimal "YRSAGO5WIT", precision: 18, scale: 2
    t.decimal "YRSAGO6WIT", precision: 18, scale: 2
    t.decimal "YRSAGO7WIT", precision: 18, scale: 2
    t.decimal "YRSAGO8WIT", precision: 18, scale: 2
    t.decimal "YRSAGO9WIT", precision: 18, scale: 2
    t.decimal "YRSAGO10WIT", precision: 18, scale: 2
    t.decimal "YRSAGO11WIT", precision: 18, scale: 2
    t.decimal "YRSAGO12WIT", precision: 18, scale: 2
    t.decimal "CURQTRGL", precision: 18, scale: 2
    t.decimal "LASTQTRGL", precision: 18, scale: 2
    t.decimal "QTR3AGOGL", precision: 18, scale: 2
    t.decimal "QTR4AGOGL", precision: 18, scale: 2
    t.decimal "MONTH12GL", precision: 18, scale: 2
    t.decimal "MONTH36GL", precision: 18, scale: 2
    t.decimal "MONTH60GL", precision: 18, scale: 2
    t.decimal "MONTH120GL", precision: 18, scale: 2
    t.decimal "MONTH84GL", precision: 18, scale: 2
    t.decimal "MONTH1GL", precision: 18, scale: 2
    t.decimal "MONTH240GL", precision: 18, scale: 2
    t.decimal "ITDGL", precision: 18, scale: 2
    t.decimal "CURRENTYRGL", precision: 18, scale: 2
    t.decimal "LASTYRGL", precision: 18, scale: 2
    t.decimal "YRSAGO3GL", precision: 18, scale: 2
    t.decimal "YRSAGO4GL", precision: 18, scale: 2
    t.decimal "YRSAGO5GL", precision: 18, scale: 2
    t.decimal "YRSAGO6GL", precision: 18, scale: 2
    t.decimal "YRSAGO7GL", precision: 18, scale: 2
    t.decimal "YRSAGO8GL", precision: 18, scale: 2
    t.decimal "YRSAGO9GL", precision: 18, scale: 2
    t.decimal "YRSAGO10GL", precision: 18, scale: 2
    t.decimal "YRSAGO11GL", precision: 18, scale: 2
    t.decimal "YRSAGO12GL", precision: 18, scale: 2
  end

  create_table "FRPTCD", primary_key: "T_CODE", id: { type: :varchar, limit: 7 }, force: :cascade do |t|
    t.varchar "T_DESC", limit: 30
    t.integer "SF_UNITS", limit: 2
    t.integer "TP_PRIN", limit: 2
    t.integer "TP_INC", limit: 2
    t.integer "TP_NET", limit: 2
    t.integer "TP_CV", limit: 2
    t.integer "TN_PRIN", limit: 2
    t.integer "TN_INC", limit: 2
    t.integer "TN_NET", limit: 2
    t.integer "TN_CV", limit: 2
    t.integer "SI_PRIN", limit: 2
    t.integer "SI_INC", limit: 2
    t.integer "SI_NET", limit: 2
    t.integer "SI_CV", limit: 2
    t.integer "SP_PRIN", limit: 2
    t.integer "SP_INC", limit: 2
    t.integer "SP_NET", limit: 2
    t.integer "SP_CV", limit: 2
    t.integer "SN_PRIN", limit: 2
    t.integer "SN_INC", limit: 2
    t.integer "SN_NET", limit: 2
    t.integer "SN_CV", limit: 2
    t.integer "CP_PRIN", limit: 2
    t.integer "CP_INC", limit: 2
    t.integer "CP_NET", limit: 2
    t.integer "CP_CV", limit: 2
    t.integer "CN_PRIN", limit: 2
    t.integer "CN_INC", limit: 2
    t.integer "CN_NET", limit: 2
    t.integer "CN_CV", limit: 2
    t.char "T_IDENT", limit: 2
  end

  create_table "FRPTCMAP", primary_key: "SRCTCODE", id: { type: :char, limit: 20 }, force: :cascade do |t|
    t.char "FRTCODE", limit: 7
    t.varchar "SRCDESC", limit: 50
    t.char "GROUPING", limit: 20
    t.varchar "USERDEF", limit: 10
  end

  create_table "FRPTHEMEGRP", primary_key: "RPT_ID", id: :integer, default: nil, force: :cascade do |t|
    t.integer "OBJECT_ID", null: false
  end

  create_table "FRPTOLER", primary_key: "SECTOR", id: { type: :char, limit: 4 }, force: :cascade do |t|
    t.integer "LOW"
    t.integer "HIGH"
    t.char "INDX", limit: 4
  end

  create_table "FRPTOLRP", primary_key: ["PKG", "COUNTRY", "SECTOR"], force: :cascade do |t|
    t.char "PKG", limit: 3, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.integer "LOW", null: false
    t.integer "HIGH", null: false
    t.char "INDX", limit: 4, null: false
  end

  create_table "FRPTRAN", primary_key: ["AACCT", "ADATE", "HID", "TDATE", "TCODE", "TSEQ"], force: :cascade do |t|
    t.char "AACCT", limit: 14, null: false
    t.date "ADATE", null: false
    t.char "HID", limit: 12, null: false
    t.date "TDATE", null: false
    t.char "TCODE", limit: 7, null: false
    t.integer "TSEQ", null: false
    t.char "TPEND", limit: 1
    t.char "TSTATE", limit: 5
    t.varchar "TSTORY", limit: 150
    t.date "TORIGDATE"
    t.date "TSETTDATE"
    t.decimal "TUNITS", precision: 18, scale: 4
    t.decimal "TPRICE", precision: 18, scale: 6
    t.decimal "TPRINCIPAL", precision: 18, scale: 2
    t.decimal "TINCOME", precision: 18, scale: 2
    t.decimal "TNET", precision: 18, scale: 2
    t.decimal "TCARRY", precision: 18, scale: 2
    t.decimal "TCOMM", precision: 18, scale: 2
    t.decimal "TEXPENSE", precision: 18, scale: 2
    t.varchar "TBROKER", limit: 10
    t.varchar "TRPTCODE", limit: 8
    t.decimal "SHRTGAIN", precision: 18, scale: 2
    t.decimal "LONGGAIN", precision: 18, scale: 2
    t.char "STATEID", limit: 3
    t.varchar "UNIQSEQ", limit: 18
    t.char "TAXIND", limit: 2
    t.decimal "TCARRYL", precision: 18, scale: 2
    t.date "TPOST"
    t.decimal "TEXCHLOC", precision: 18, scale: 8, default: 1.0
    t.decimal "USERDEF1", precision: 18, scale: 2
    t.char "USERCHR1", limit: 4
    t.decimal "TEXCHPAY", precision: 18, scale: 8
    t.char "TPAYCNTRY", limit: 2
    t.varchar "USERCHR2", limit: 10
    t.varchar "USERCHR3", limit: 10
    t.varchar "USERCHR4", limit: 20
    t.varchar "USERCHR5", limit: 20
    t.varchar "USERCHR6", limit: 10
    t.datetime "USERDT1", precision: nil
    t.index ["TCODE"], name: "IX_FRPTRAN_5"
    t.index ["TDATE"], name: "IX_FRPTRAN_4"
    t.index ["TRPTCODE"], name: "IX_FRPTRAN_21"
  end

  create_table "FRPTRAN_NP", primary_key: ["AACCT", "ADATE", "HID", "TDATE", "TCODE", "TSEQ"], force: :cascade do |t|
    t.char "AACCT", limit: 14, null: false
    t.datetime "ADATE", precision: nil, null: false
    t.char "HID", limit: 12, null: false
    t.datetime "TDATE", precision: nil, null: false
    t.varchar "TCODE", limit: 7, null: false
    t.integer "TSEQ", null: false
    t.char "TPEND", limit: 1
    t.varchar "TSTATE", limit: 5
    t.varchar "TSTORY", limit: 150
    t.datetime "TORIGDATE", precision: nil
    t.datetime "TSETTDATE", precision: nil
    t.decimal "TUNITS", precision: 18, scale: 4
    t.decimal "TPRICE", precision: 18, scale: 6
    t.decimal "TPRINCIPAL", precision: 18, scale: 2
    t.decimal "TINCOME", precision: 18, scale: 2
    t.decimal "TNET", precision: 18, scale: 2
    t.decimal "TCARRY", precision: 18, scale: 2
    t.decimal "TCOMM", precision: 18, scale: 2
    t.decimal "TEXPENSE", precision: 18, scale: 2
    t.varchar "TBROKER", limit: 10
    t.varchar "TRPTCODE", limit: 8
    t.decimal "SHRTGAIN", precision: 18, scale: 2
    t.decimal "LONGGAIN", precision: 18, scale: 2
    t.char "STATEID", limit: 3
    t.varchar "UNIQSEQ", limit: 15
    t.char "TAXIND", limit: 2
    t.decimal "TCARRYL", precision: 18, scale: 2
    t.datetime "TPOST", precision: nil
    t.decimal "TEXCHLOC", precision: 18, scale: 8, default: 1.0
    t.decimal "USERDEF1", precision: 18, scale: 2
    t.char "USERCHR1", limit: 4
    t.decimal "TEXCHPAY", precision: 18, scale: 8
    t.char "TPAYCNTRY", limit: 2
    t.index ["TCODE"], name: "IX_FRPTRAN_NP_5"
    t.index ["TDATE"], name: "IX_FRPTRAN_NP_4"
    t.index ["TRPTCODE"], name: "IX_FRPTRAN_NP_21"
  end

  create_table "FRPTX", primary_key: ["ADATE", "STATEFED"], force: :cascade do |t|
    t.datetime "ADATE", precision: nil, null: false
    t.char "STATEFED", limit: 2, null: false
    t.decimal "MAXSHORT", precision: 6, scale: 4
    t.decimal "MAXLONG", precision: 6, scale: 4
  end

  create_table "FRPUOBAE", primary_key: ["AACCT", "HID", "ASOFDATE"], force: :cascade do |t|
    t.char "AACCT", limit: 14, null: false
    t.char "HID", limit: 12, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "CMHDIRECT1", limit: 4
    t.char "LMHDIRECT1", limit: 4
    t.decimal "E_UNITS", precision: 18, scale: 4
    t.decimal "B_UNITS", precision: 18, scale: 4
    t.decimal "T_UNITS", precision: 18, scale: 4
    t.index ["ASOFDATE"], name: "IX_FRPUOBAE_3"
  end

  create_table "FRPUSACC", primary_key: ["USER_ID", "ACCT", "SCREEN"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.char "ACCT", limit: 14, null: false
    t.varchar "SCREEN", limit: 20, null: false
  end

  create_table "FRPUSER", primary_key: "USER_ID", id: { type: :varchar, limit: 20 }, force: :cascade do |t|
    t.varchar "USER_FNAME", limit: 25
    t.varchar "USER_LNAME", limit: 25
    t.char "CHANGED", limit: 1
    t.char "USER_TYPE", limit: 1, null: false
    t.varchar "EMAIL", limit: 200
    t.varchar "CORE_USER_GRP", limit: 20, default: "DEFAULT", null: false
    t.nchar "LANG_ABBR", limit: 4, default: "eng", null: false
    t.nchar "PERM_LANG_ABBR", limit: 4, default: "eng", null: false
  end

  create_table "FRPUSRGP", primary_key: ["USER_ID", "GROUP_ID"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.varchar "GROUP_ID", limit: 20, null: false
  end

  create_table "FRPUSROB", primary_key: ["USER_ID", "OBJECT_ID"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.integer "OBJECT_ID", null: false
  end

  create_table "FRPUSRVL", primary_key: ["USER_ID", "VAL_ID"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.integer "VAL_ID", null: false
  end

  create_table "FRPVAR", primary_key: ["USER_ID", "ASOFDATE", "ACCT", "SECTOR"], force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "SECTOR", limit: 4, null: false
    t.decimal "SMKT", precision: 18, scale: 2, null: false
    t.decimal "SRET", precision: 8, scale: 2
    t.decimal "MMKT", precision: 18, scale: 2, null: false
    t.decimal "MRET", precision: 8, scale: 2
    t.char "MODELACCT", limit: 14, null: false
    t.datetime "FROMDATE", precision: nil, null: false
  end

  create_table "FRPW", primary_key: "ID", id: { type: :char, limit: 12 }, force: :cascade do |t|
    t.date "SDATE", null: false
    t.decimal "SPRICE", precision: 18, scale: 6
    t.datetime "DATESTMP", precision: nil
    t.decimal "PRINFACT", precision: 11, scale: 8
  end

  create_table "FRPWSUSER", primary_key: "WS_USER", id: { type: :varchar, limit: 20 }, force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
    t.datetime "DATE_TIME", precision: nil, null: false
    t.integer "BATCHID", null: false
  end

  create_table "FRP_S", primary_key: "ID", id: { type: :char, limit: 12 }, force: :cascade do |t|
    t.date "SDATE", null: false
    t.decimal "SPRICE", precision: 18, scale: 6
    t.datetime "DATESTAMP", precision: nil
    t.decimal "PRINFACT", precision: 11, scale: 6
  end

  create_table "FUL1J", primary_key: ["ACCT", "FOCLIST"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.integer "FOCLIST", null: false
    t.char "SECTOR_AIR", limit: 4, null: false
  end

  create_table "GPNDATA", id: false, force: :cascade do |t|
    t.datetime "RUNDATE", precision: nil
    t.datetime "DAY", precision: nil
    t.char "BDAY", limit: 1
    t.char "BIZDAY", limit: 2
    t.char "DAYB4EOM", limit: 1
    t.datetime "LAST", precision: nil
    t.datetime "LASTBDAY", precision: nil
    t.char "MTHEND", limit: 1
    t.char "EOWEEK", limit: 1
    t.char "QTREND", limit: 1
    t.char "LOADVAR3", limit: 1
  end

  create_table "GRENDELUSERLOOKUP", primary_key: "GRENDELUSERTOKEN", id: { type: :varchar, limit: 100 }, force: :cascade do |t|
    t.varchar "USER_ID", limit: 20, null: false
  end

  create_table "GUID_Example", id: false, force: :cascade do |t|
    t.uuid "SEQUENTIAL_ID", default: -> { "newsequentialid()" }
    t.uuid "RANDOM_ID", default: -> { "newid()" }
    t.varchar "CHG_TYP", limit: 1
    t.varchar "MY_ID", limit: 4
  end

  create_table "HOLDED", primary_key: "COUNTRY", id: { type: :char, limit: 10 }, force: :cascade do |t|
    t.float "DCOST", null: false
    t.float "RETAIL_COST", null: false
  end

  create_table "HUM_TEST", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.integer "COST"
  end

  create_table "MDBMRK2", primary_key: ["ACCT", "AGG", "COUNTRY", "SECTOR", "SIFLAG"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "AGG", limit: 11, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.char "SIFLAG", limit: 1, null: false
    t.date "ASOFDATE", null: false
    t.decimal "ASOF_MKT_M", precision: 19, scale: 2, null: false
    t.decimal "ASOF_ACC_M", precision: 19, scale: 2, null: false
    t.decimal "ASOF_MKT_D", precision: 19, scale: 2
    t.decimal "ASOF_ACC_D", precision: 19, scale: 2
    t.decimal "E_MKT_1", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_1", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_1", null: false
    t.date "STPSD_1", null: false
    t.date "STPED_1", null: false
    t.decimal "STP_UVR_1", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_1", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_1", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_1", limit: 1, null: false
    t.decimal "E_MKT_2", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_2", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_2", null: false
    t.date "STPSD_2", null: false
    t.date "STPED_2", null: false
    t.decimal "STP_UVR_2", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_2", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_2", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_2", limit: 1, null: false
    t.decimal "E_MKT_3", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_3", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_3", null: false
    t.date "STPSD_3", null: false
    t.date "STPED_3", null: false
    t.decimal "STP_UVR_3", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_3", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_3", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_3", limit: 1, null: false
    t.decimal "E_MKT_4", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_4", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_4", null: false
    t.date "STPSD_4", null: false
    t.date "STPED_4", null: false
    t.decimal "STP_UVR_4", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_4", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_4", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_4", limit: 1, null: false
    t.decimal "E_MKT_5", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_5", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_5", null: false
    t.date "STPSD_5", null: false
    t.date "STPED_5", null: false
    t.decimal "STP_UVR_5", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_5", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_5", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_5", limit: 1, null: false
    t.decimal "E_MKT_6", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_6", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_6", null: false
    t.date "STPSD_6", null: false
    t.date "STPED_6", null: false
    t.decimal "STP_UVR_6", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_6", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_6", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_6", limit: 1, null: false
    t.decimal "E_MKT_7", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_7", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_7", null: false
    t.date "STPSD_7", null: false
    t.date "STPED_7", null: false
    t.decimal "STP_UVR_7", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_7", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_7", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_7", limit: 1, null: false
  end

  create_table "MDSCTR2", primary_key: ["ACCT", "AGG", "COUNTRY", "SECTOR", "SIFLAG"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "AGG", limit: 11, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.char "SIFLAG", limit: 1, null: false
    t.date "ASOFDATE", null: false
    t.decimal "ASOF_MKT_M", precision: 19, scale: 2
    t.decimal "ASOF_ACC_M", precision: 19, scale: 2
    t.decimal "ASOF_MKT_D", precision: 19, scale: 2
    t.decimal "ASOF_ACC_D", precision: 19, scale: 2
    t.decimal "E_MKT_1", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_1", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_1", null: false
    t.date "STPSD_1", null: false
    t.date "STPED_1", null: false
    t.decimal "STP_UVR_1", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_1", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_1", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_1", limit: 1, null: false
    t.decimal "E_MKT_2", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_2", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_2", null: false
    t.date "STPSD_2", null: false
    t.date "STPED_2", null: false
    t.decimal "STP_UVR_2", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_2", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_2", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_2", limit: 1, null: false
    t.decimal "E_MKT_3", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_3", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_3", null: false
    t.date "STPSD_3", null: false
    t.date "STPED_3", null: false
    t.decimal "STP_UVR_3", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_3", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_3", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_3", limit: 1, null: false
    t.decimal "E_MKT_4", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_4", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_4", null: false
    t.date "STPSD_4", null: false
    t.date "STPED_4", null: false
    t.decimal "STP_UVR_4", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_4", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_4", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_4", limit: 1, null: false
    t.decimal "E_MKT_5", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_5", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_5", null: false
    t.date "STPSD_5", null: false
    t.date "STPED_5", null: false
    t.decimal "STP_UVR_5", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_5", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_5", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_5", limit: 1, null: false
    t.decimal "E_MKT_6", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_6", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_6", null: false
    t.date "STPSD_6", null: false
    t.date "STPED_6", null: false
    t.decimal "STP_UVR_6", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_6", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_6", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_6", limit: 1, null: false
    t.decimal "E_MKT_7", precision: 19, scale: 2, null: false
    t.decimal "E_ACC_7", precision: 19, scale: 2, null: false
    t.date "STPSD_NEW_7", null: false
    t.date "STPSD_7", null: false
    t.date "STPED_7", null: false
    t.decimal "STP_UVR_7", precision: 19, scale: 6, null: false
    t.decimal "ANN_MTHS_7", precision: 11, scale: 6, null: false
    t.decimal "STP_RET_7", precision: 19, scale: 2, null: false
    t.char "RPTDATEFLAG_7", limit: 1, null: false
  end

  create_table "MIFACCT", id: false, force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
  end

  create_table "NDATA", id: false, force: :cascade do |t|
    t.datetime "RUNDATE", precision: nil, null: false
    t.datetime "DAY", precision: nil
    t.datetime "LAST", precision: nil
    t.datetime "PREVEOM", precision: nil
    t.char "BDAY", limit: 1
    t.char "FIRSTDAY", limit: 1
    t.char "FOURTHDY", limit: 1
    t.datetime "LASTBDAY", precision: nil
    t.char "MTHEND", limit: 1
    t.char "EOWEEK", limit: 1
    t.char "LOADVAR3", limit: 1
    t.char "BIZDAY", limit: 2
  end

  create_table "NETSRTS", id: false, force: :cascade do |t|
    t.char "ACCOUNT", limit: 14, null: false
    t.datetime "ASOFDATE", precision: nil, null: false
    t.char "COUNTRY", limit: 2, null: false
    t.char "SECTOR", limit: 4, null: false
    t.char "TYPE", limit: 1, null: false
    t.char "BORL", limit: 1, null: false
    t.char "SORT", limit: 5
    t.datetime "PRIORDATE", precision: nil
    t.decimal "MKTVAL", precision: 18, scale: 2
    t.decimal "PREVMKTVAL", precision: 18, scale: 2
    t.char "SECTORNAME", limit: 50
    t.char "CATEGNAME", limit: 30
    t.decimal "YEAR12", precision: 18, scale: 2
    t.decimal "YEAR11", precision: 18, scale: 2
    t.decimal "YEAR10", precision: 18, scale: 2
    t.decimal "YEAR9", precision: 18, scale: 2
    t.decimal "YEAR8", precision: 18, scale: 2
    t.decimal "YEAR7", precision: 18, scale: 2
    t.decimal "YEAR6", precision: 18, scale: 2
    t.decimal "YEAR5", precision: 18, scale: 2
    t.decimal "YEAR4", precision: 18, scale: 2
    t.decimal "YEAR3", precision: 18, scale: 2
    t.decimal "YEAR2", precision: 18, scale: 2
    t.decimal "YEAR1", precision: 18, scale: 2
    t.decimal "QTR4", precision: 18, scale: 2
    t.decimal "QTR3", precision: 18, scale: 2
    t.decimal "LASTQTR", precision: 18, scale: 2
    t.decimal "CURRENTQTR", precision: 18, scale: 2
    t.decimal "ITD", precision: 18, scale: 2
    t.decimal "MTH1", precision: 18, scale: 2
    t.decimal "MTH2", precision: 18, scale: 2
    t.decimal "MTH3", precision: 18, scale: 2
    t.decimal "MTH4", precision: 18, scale: 2
    t.decimal "MTH5", precision: 18, scale: 2
    t.decimal "MTH6", precision: 18, scale: 2
    t.decimal "MTH7", precision: 18, scale: 2
    t.decimal "MTH8", precision: 18, scale: 2
    t.decimal "MTH9", precision: 18, scale: 2
    t.decimal "MTH10", precision: 18, scale: 2
    t.decimal "MTH11", precision: 18, scale: 2
    t.decimal "MTH12", precision: 18, scale: 2
    t.decimal "MTH18", precision: 18, scale: 2
    t.decimal "MTH24", precision: 18, scale: 2
    t.decimal "MTH36", precision: 18, scale: 2
    t.decimal "MTH48", precision: 18, scale: 2
    t.decimal "MTH60", precision: 18, scale: 2
    t.decimal "MTH72", precision: 18, scale: 2
    t.decimal "MTH84", precision: 18, scale: 2
    t.decimal "MTH96", precision: 18, scale: 2
    t.decimal "MTH108", precision: 18, scale: 2
    t.decimal "MTH120", precision: 18, scale: 2
    t.decimal "MTH180", precision: 18, scale: 2
    t.decimal "MTH240", precision: 18, scale: 2
    t.char "GINDEX", limit: 30
    t.char "ICPMNTHS", limit: 3
    t.decimal "YEAR12FTD", precision: 18, scale: 2
    t.decimal "YEAR11FTD", precision: 18, scale: 2
    t.decimal "YEAR10FTD", precision: 18, scale: 2
    t.decimal "YEAR9FTD", precision: 18, scale: 2
    t.decimal "YEAR8FTD", precision: 18, scale: 2
    t.decimal "YEAR7FTD", precision: 18, scale: 2
    t.decimal "YEAR6FTD", precision: 18, scale: 2
    t.decimal "YEAR5FTD", precision: 18, scale: 2
    t.decimal "YEAR4FTD", precision: 18, scale: 2
    t.decimal "YEAR3FTD", precision: 18, scale: 2
    t.decimal "YEAR2FTD", precision: 18, scale: 2
    t.decimal "YEAR1FTD", precision: 18, scale: 2
    t.decimal "PREVQTR1", precision: 18, scale: 2
    t.decimal "PREVQTR2", precision: 18, scale: 2
    t.decimal "PREVQTR3", precision: 18, scale: 2
    t.decimal "CSI", precision: 18, scale: 4
    t.char "AGGTYP", limit: 3
    t.decimal "ITDCUM", precision: 18, scale: 2
    t.decimal "DAY1", precision: 18, scale: 2
    t.decimal "QTD", precision: 18, scale: 2
    t.decimal "FQD", precision: 18, scale: 2
  end

  create_table "NEW_IDS", primary_key: "BAC_ID", id: { type: :varchar, limit: 32 }, force: :cascade do |t|
    t.varchar "FRID", limit: 8
  end

  create_table "NRAHIM", primary_key: "AGG6", id: { type: :char, limit: 11 }, force: :cascade do |t|
    t.char "AGGACCT", limit: 3, null: false
  end

  create_table "PROJECTS", primary_key: "Pro_id", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "Pro_name", limit: 50, null: false
    t.varchar "Pro_Description", limit: 100
    t.varchar "Pro_location", limit: 50, null: false
    t.integer "Pro_cost", null: false
    t.date "Pro_start_date", null: false
    t.date "Pro_end_date", null: false
    t.varchar "St_fullname", limit: 50, null: false
    t.integer "Staff_id", null: false
  end

  create_table "PROJECTS_USERS", primary_key: "User_id", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "User_name", limit: 50, null: false
    t.varchar "User_password", limit: 50, null: false
  end

  create_table "PROVINCE", primary_key: "Province_id", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "Province_name", limit: 50, null: false
  end

  create_table "SEQ_IDS", primary_key: "CoreValue", id: :integer, force: :cascade do |t|
    t.varchar "MayBeID", limit: 4
    t.varchar "MayBeID_2", limit: 4
    t.varchar "MayBeID_3", limit: 4
    t.varchar "MayBeID_4", limit: 4
  end

  create_table "SQL_ANSLACT", primary_key: "E011", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.char "E01", limit: 14, null: false
  end

  create_table "STAFF", primary_key: "Staff_id", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "Staff_fname", limit: 50, null: false
    t.varchar "Staff_lname", limit: 50, null: false
    t.varchar "Staff_position", limit: 50, null: false
  end

  create_table "STUDENT", id: false, force: :cascade do |t|
    t.varchar "Name", limit: 50
    t.varchar "FatherName", limit: 50
    t.integer "Score"
  end

  create_table "STUDENTS", id: false, force: :cascade do |t|
    t.integer "ID"
    t.char "NAME", limit: 10
    t.char "FATHERNAME", limit: 10
    t.integer "SCORE"
    t.check_constraint "[SCORE]>=(55)", name: "CK__STUDENTS__SCORE__71ABC9DE"
    t.check_constraint "[SCORE]>=(55)", name: "CK__STUDENTS__SCORE__74883689"
    t.check_constraint "[SCORE]>=(55)", name: "CK__STUDENTS__SCORE__757C5AC2"
    t.check_constraint "[SCORE]>=(55)", name: "CK__STUDENTS__SCORE__76707EFB"
  end

  create_table "TMPDRIVERI2", primary_key: ["SORI", "ACCT", "AGG", "SIFLAG"], force: :cascade do |t|
    t.char "SORI", limit: 4, null: false
    t.char "ACCT", limit: 14, null: false
    t.char "AGG", limit: 14, null: false
    t.char "SIFLAG", limit: 1, null: false
    t.char "TFSEC", limit: 1, null: false
    t.char "BMCOUNTRY", limit: 2, null: false
    t.date "ICPDATED"
  end

  create_table "TMPGPD", primary_key: ["E01", "E02"], force: :cascade do |t|
    t.char "E01", limit: 12, null: false
    t.date "E02", null: false
    t.decimal "E03", precision: 19, scale: 6, null: false
    t.char "E04", limit: 100, null: false
  end

  create_table "TMPHIDUVR_FAHMADIAN", primary_key: ["ACCT", "HID", "HDIRECTX", "ADATE"], force: :cascade do |t|
    t.char "ACCT", limit: 14, null: false
    t.char "HID", limit: 12, null: false
    t.char "HDIRECTX", limit: 4, null: false
    t.date "ADATE", null: false
    t.char "HDIRECT1", limit: 4, null: false
    t.char "HDIRECT2", limit: 4, null: false
    t.char "HDIRECT3", limit: 4, null: false
    t.decimal "HFACTOR", precision: 15, scale: 6
    t.decimal "FACTOR", precision: 19, scale: 2
    t.integer "HID1", null: false
    t.decimal "PMKT", precision: 19, scale: 2
    t.decimal "PACC", precision: 19, scale: 2
    t.decimal "MKT", precision: 19, scale: 2
    t.decimal "INC", precision: 19, scale: 2
    t.decimal "ACC", precision: 19, scale: 2
    t.decimal "POS", precision: 19, scale: 2
    t.decimal "NEG", precision: 19, scale: 2
    t.decimal "PRVHUNITS", precision: 19, scale: 4
    t.decimal "HUNITS", precision: 19, scale: 4
    t.decimal "TRUNITS", precision: 19, scale: 4
    t.decimal "SPLITUNITS", precision: 19, scale: 4
    t.decimal "UTPRTOSPLIT", precision: 19, scale: 4
    t.decimal "TRANUNTB", precision: 19, scale: 4
    t.decimal "TRANPRNB", precision: 19, scale: 2
    t.decimal "TRANUNTS", precision: 19, scale: 4
    t.decimal "TRANPRNS", precision: 19, scale: 2
    t.decimal "SHRT_RGAIN", precision: 19, scale: 2
    t.decimal "LONG_RGAIN", precision: 19, scale: 2
    t.decimal "HCARRY", precision: 19, scale: 2
    t.decimal "PRVHCARRY", precision: 19, scale: 2
    t.decimal "PFNEW", precision: 19, scale: 6, null: false
    t.decimal "NFNEW", precision: 19, scale: 6, null: false
    t.decimal "RETPFNEW", precision: 19, scale: 6, null: false
    t.decimal "RETNFNEW", precision: 19, scale: 6, null: false
    t.decimal "UVRWGT", precision: 9, scale: 6, null: false
    t.decimal "DLPUVRWGT", precision: 9, scale: 6, null: false
  end

  create_table "TMPINDXD", primary_key: ["INDX", "IDATE"], force: :cascade do |t|
    t.char "INDX", limit: 4, null: false
    t.date "IDATE", null: false
    t.decimal "IPRICE", precision: 18, scale: 6
    t.decimal "IINC", precision: 18, scale: 2
    t.decimal "IRET", precision: 9, scale: 6
  end

  create_table "TMPTFMKT", primary_key: "ACCT", id: { type: :char, limit: 14 }, force: :cascade do |t|
    t.decimal "MKT", precision: 19, scale: 2
    t.char "ACTIVE", limit: 3
  end

  create_table "TempTableName", id: false, force: :cascade do |t|
    t.integer "ID"
    t.varchar "FIRST_NAME", limit: 50
    t.varchar "LAST_NAME", limit: 50
    t.varchar "DEPARTMENT", limit: 50
  end

  create_table "UNIVER", id: false, force: :cascade do |t|
    t.varchar "Name", limit: 50
    t.varchar "FatherName", limit: 50
    t.integer "Score"
  end

  create_table "VISIBILITY", id: false, force: :cascade do |t|
    t.char "USERNAME", limit: 20
    t.varchar "ACCT", limit: 14
    t.datetime "REFRESH_DT", precision: nil
  end

  create_table "WAMIRZAD", primary_key: "AGG6", id: { type: :char, limit: 11 }, force: :cascade do |t|
    t.char "AGGACCT", limit: 3, null: false
  end

  create_table "ZKARIMI", primary_key: "AGG6", id: { type: :char, limit: 11 }, force: :cascade do |t|
    t.char "AGGACCT", limit: 3, null: false
  end

  create_table "dtproperties", primary_key: ["id", "property"], force: :cascade do |t|
    t.integer "id", null: false
    t.integer "objectid"
    t.varchar "property", limit: 64, null: false
    t.varchar "value", limit: 255
    t.string "lvalue"
    t.integer "version", default: 0, null: false
    t.string "uvalue", limit: 255
  end

  create_table "employee", primary_key: "EMP_ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "FIRST_NAME", limit: 255
    t.varchar "LAST_NAME", limit: 255
    t.date "HIRE_DATE"
    t.varchar "DEPARTMENT", limit: 255
    t.integer "SALARY"
    t.varchar "SKILLS", limit: 255
  end

  create_table "sysdiagrams", primary_key: "diagram_id", id: :integer, force: :cascade do |t|
    t.string "name", null: false
    t.integer "principal_id", null: false
    t.integer "version"
    t.binary "definition"
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "CITY", "CITY", column: "ID", primary_key: "ID", name: "FK__CITY__ID__4AD12888"
  add_foreign_key "FRAPINAMES", "FRAPIPROGS", column: "API_ID", primary_key: "API_ID", name: "FK_FRAPINAMES_1_FRAPIPROGS_1"
  add_foreign_key "FRPACGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPACGRP_1_FRPOBJ_1"
  add_foreign_key "FRPACGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPACGRP_FRPOBJ"
  add_foreign_key "FRPAGGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPAGGRP_1_FRPOBJ_1"
  add_foreign_key "FRPAGGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPAGGRP_FRPOBJ"
  add_foreign_key "FRPASSETGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPASSETGRP_1_FRPOBJ_1"
  add_foreign_key "FRPCOMP", "FRPOBJ", column: "OBJECT_ID", primary_key: "OBJECT_ID", name: "FK_FRPCOMP_4_FRPOBJ_1"
  add_foreign_key "FRPCOMP", "FRPOBJ", column: "OBJECT_ID", primary_key: "OBJECT_ID", name: "FK_FRPCOMP_FRPOBJ"
  add_foreign_key "FRPCUSTCODE", "FRPCUSTGRPS", column: "GRPID", primary_key: "GRPID", name: "FK_FRPCUSTCODE_2_FRPCUSTGRPS_1"
  add_foreign_key "FRPCUSTVARS", "FRPCUSTCODE", column: "PROGNAME", primary_key: "PROGNAME", name: "FK_FRPCUSTVARS_1_FRPCUSTCODE_1"
  add_foreign_key "FRPFLGRP", "FRPFLVAL", column: "VAL_ID", primary_key: "VAL_ID", name: "FK_FRPFLGRP_2_FRPFLVAL_1"
  add_foreign_key "FRPFLGRP", "FRPFLVAL", column: "VAL_ID", primary_key: "VAL_ID", name: "FK_FRPFLGRP_FRPFLVAL"
  add_foreign_key "FRPFLGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPFLGRP_1_FRPOBJ_1"
  add_foreign_key "FRPFLGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPFLGRP_FRPOBJ"
  add_foreign_key "FRPFLVAL", "FRPFILTR", column: "FILTER", primary_key: "FILTER", name: "FK_FRPFLVAL_4_FRPFILTR_1"
  add_foreign_key "FRPFLVAL", "FRPFILTR", column: "FILTER", primary_key: "FILTER", name: "FK_FRPFLVAL_FRPFILTR"
  add_foreign_key "FRPFOOTMAP", "FRPFOOTPKG", column: "PKG_ID", primary_key: "PKG_ID", name: "FK_FRPFOOTMAP_3_FRPFOOTPKG_1"
  add_foreign_key "FRPFOOTMAP", "FRPRPTS", column: "RPT_THEME_ID", primary_key: "RPT_ID", name: "FK_FRPFOOTMAP_1_FRPRPTS_1"
  add_foreign_key "FRPIMG", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPIMG_2_FRPRPTS_1"
  add_foreign_key "FRPIMG", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPIMG_FRPRPTS"
  add_foreign_key "FRPIMGPKGGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPIMGPKGGRP_1_FRPOBJ_1"
  add_foreign_key "FRPLANGTRANS", "FRPLANGUAGES", column: "LANG_ABBR", primary_key: "LANG_ABBR", name: "FK_FRPLANGTRANS_2_FRPLANGUAGES_1"
  add_foreign_key "FRPLOACCTUSER", "FRPUSER", column: "USER_ID", primary_key: "USER_ID", name: "FK_FRPLOACCTUSER_2_FRPUSER_1"
  add_foreign_key "FRPLOACCTUSER", "FRPUSER", column: "USER_ID", primary_key: "USER_ID", name: "FK_FRPLOACCTUSER_FRPUSER"
  add_foreign_key "FRPLOFNC", "FRPLOBATCHNAME", column: "BATCHID", primary_key: "BATCHID", name: "FK_FRPLOFNC_1_FRPLOBATCHNAME_1"
  add_foreign_key "FRPLOFNC", "FRPLOBATCHNAME", column: "BATCHID", primary_key: "BATCHID", name: "FK_FRPLOFNC_FRPLOBATCHNAME"
  add_foreign_key "FRPLOFNC", "FRPOBJ", column: "BMARK_GROUP", primary_key: "OBJECT_ID", name: "FK_FRPLOFNC_10_FRPOBJ_1"
  add_foreign_key "FRPLOFNC", "FRPOBJ", column: "RO_GROUP", primary_key: "OBJECT_ID", name: "FK_FRPLOFNC_11_FRPOBJ_1"
  add_foreign_key "FRPLOFNC", "FRPOBJ", column: "SECTOR_GROUP", primary_key: "OBJECT_ID", name: "FK_FRPLOFNC_9_FRPOBJ_1"
  add_foreign_key "FRPLOPRM", "FRPOUT", column: "OUTTYPE_ID", primary_key: "OUTTYPE_ID", name: "FK_FRPLOPRM_4_FRPOUT_1"
  add_foreign_key "FRPLOPRM", "FRPOUT", column: "OUTTYPE_ID", primary_key: "OUTTYPE_ID", name: "FK_FRPLOPRM_FRPOUT"
  add_foreign_key "FRPMAP", "FRPGLVAR", column: "GL_ID", primary_key: "GL_ID", name: "FK_FRPMAP_2_FRPGLVAR_1"
  add_foreign_key "FRPMRGRP", "FRPOBJ", column: "ACGRP_ID", primary_key: "OBJECT_ID", name: "FK_FRPMRGRP_3_FRPOBJ_1"
  add_foreign_key "FRPMRGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPMRGRP_1_FRPOBJ_1"
  add_foreign_key "FRPMRGRP", "FRPOBJ", column: "IGRP_ID", primary_key: "OBJECT_ID", name: "FK_FRPMRGRP_5_FRPOBJ_1"
  add_foreign_key "FRPMRGRP", "FRPOBJ", column: "RPGRP_ID", primary_key: "OBJECT_ID", name: "FK_FRPMRGRP_4_FRPOBJ_1"
  add_foreign_key "FRPMRGRP", "FRPOUT", column: "OUTPUT_TYPE", primary_key: "OUTTYPE_ID", name: "FK_FRPMRGRP_10_FRPOUT_1"
  add_foreign_key "FRPMRGRP", "FRPOUT", column: "OUTPUT_TYPE", primary_key: "OUTTYPE_ID", name: "FK_FRPMRGRP_FRPOUT"
  add_foreign_key "FRPRANGE", "FRPRNGNM", column: "RANGE_ID", primary_key: "RANGE_ID", name: "FK_FRPRANGE_1_FRPRNGNM_1"
  add_foreign_key "FRPRANGE", "FRPRNGNM", column: "RANGE_ID", primary_key: "RANGE_ID", name: "FK_FRPRANGE_FRPRNGNM"
  add_foreign_key "FRPRNGNM", "FRPCHLST", column: "CHARACTERISTIC", primary_key: "CHARACTERISTIC", name: "FK_FRPRNGNM_2_FRPCHLST_1"
  add_foreign_key "FRPRNGNM", "FRPCHLST", column: "CHARACTERISTIC", primary_key: "CHARACTERISTIC", name: "FK_FRPRNGNM_FRPCHLST"
  add_foreign_key "FRPRNGNM", "FRPSTYLE", column: "STYLE", primary_key: "STYLE", name: "FK_FRPRNGNM_3_FRPSTYLE_1"
  add_foreign_key "FRPRNGNM", "FRPSTYLE", column: "STYLE", primary_key: "STYLE", name: "FK_FRPRNGNM_FRPSTYLE"
  add_foreign_key "FRPROGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPROGRP_1_FRPOBJ_1"
  add_foreign_key "FRPROGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPROGRP_FRPOBJ"
  add_foreign_key "FRPROGRP", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPROGRP_2_FRPRPTS_1"
  add_foreign_key "FRPROGRP", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPROGRP_FRPRPTS"
  add_foreign_key "FRPROGRP2", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPROGRP2_1_FRPOBJ_1"
  add_foreign_key "FRPROGRP2", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPROGRP2_2_FRPRPTS_1"
  add_foreign_key "FRPROGRP2", "FRPRPT_OPT", column: "OPT_ID", primary_key: "OPT_ID", name: "FK_FRPROGRP2_5_FRPRPT_OPT_1"
  add_foreign_key "FRPRPCOL", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPRPCOL_2_FRPRPTS_1"
  add_foreign_key "FRPRPCOL", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPRPCOL_FRPRPTS"
  add_foreign_key "FRPRPGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPRPGRP_1_FRPOBJ_1"
  add_foreign_key "FRPRPGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPRPGRP_FRPOBJ"
  add_foreign_key "FRPRPGRP", "FRPOBJ", column: "RO_GRP", primary_key: "OBJECT_ID", name: "FK_FRPRPGRP_4_FRPOBJ_1"
  add_foreign_key "FRPRPGRP", "FRPOBJ", column: "RO_GRP", primary_key: "OBJECT_ID", name: "FK_FRPRPGRP_FRPROGRP"
  add_foreign_key "FRPRPGRP", "FRPOBJ", column: "SCT_GRP", primary_key: "OBJECT_ID", name: "FK_FRPRPGRP_5_FRPOBJ_1"
  add_foreign_key "FRPRPGRP", "FRPOBJ", column: "SCT_GRP", primary_key: "OBJECT_ID", name: "FK_FRPRPGRP_FRPSECTR"
  add_foreign_key "FRPRPGRP", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPRPGRP_3_FRPRPTS_1"
  add_foreign_key "FRPRPGRP", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPRPGRP_FRPRPTS"
  add_foreign_key "FRPRPT_ASSOC", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPRPT_ASSOC_1_FRPRPTS_1"
  add_foreign_key "FRPRPT_ASSOC", "FRPRPT_DISPGROUP", column: "DISPGROUP_ID", primary_key: "DISPGROUP_ID", name: "FK_FRPRPT_ASSOC_8_FRPRPT_DISPGROUP_1"
  add_foreign_key "FRPRPT_ASSOC", "FRPRPT_OPT", column: "OPT_ID", primary_key: "OPT_ID", name: "FK_FRPRPT_ASSOC_4_FRPRPT_OPT_1"
  add_foreign_key "FRPRPT_DISPGROUP_ASSOC", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPRPT_DISPGROUP_ASSOC_1_FRPRPTS_1"
  add_foreign_key "FRPRPT_DISPGROUP_ASSOC", "FRPRPT_DISPGROUP", column: "DISPGROUP_ID", primary_key: "DISPGROUP_ID", name: "FK_FRPRPT_DISPGROUP_ASSOC_4_FRPRPT_DISPGROUP_1"
  add_foreign_key "FRPRPT_OPT", "FRPRPT_OPT_TYPE", column: "OPT_TYPE", primary_key: "OPT_TYPE", name: "FK_FRPRPT_OPT_2_FRPRPT_OPT_TYPE_1"
  add_foreign_key "FRPSBSGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPSBSGRP_1_FRPOBJ_1"
  add_foreign_key "FRPSIGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPSIGRP_1_FRPOBJ_1"
  add_foreign_key "FRPSIGRP", "FRPOBJ", column: "GROUP_ID", primary_key: "OBJECT_ID", name: "FK_FRPSIGRP_FRPOBJ"
  add_foreign_key "FRPSMGMT", "FRPRPTS", column: "SM_RPT_ID", primary_key: "RPT_ID", name: "FK_FRPSMGMT_3_FRPRPTS_1"
  add_foreign_key "FRPSMGMT", "FRPUSER", column: "SM_USER_ID", primary_key: "USER_ID", name: "FK_FRPSMGMT_1_FRPUSER_1"
  add_foreign_key "FRPTHEMEGRP", "FRPOBJ", column: "OBJECT_ID", primary_key: "OBJECT_ID", name: "FK_FRPTHEMEGRP_2_FRPOBJ_1"
  add_foreign_key "FRPTHEMEGRP", "FRPRPTS", column: "RPT_ID", primary_key: "RPT_ID", name: "FK_FRPTHEMEGRP_1_FRPRPTS_1"
  add_foreign_key "FRPUSER", "FRPLANGUAGES", column: "LANG_ABBR", primary_key: "LANG_ABBR", name: "FK_FRPUSER_8_FRPLANGUAGES_1"
  add_foreign_key "FRPUSER", "FRPLANGUAGES", column: "PERM_LANG_ABBR", primary_key: "LANG_ABBR", name: "FK_FRPUSER_9_FRPLANGUAGES_1"
  add_foreign_key "FRPUSRGP", "FRPUSER", column: "USER_ID", primary_key: "USER_ID", name: "FK_FRPUSRGP_1_FRPUSER_1"
  add_foreign_key "FRPUSRGP", "FRPUSER", column: "USER_ID", primary_key: "USER_ID", name: "FK_FRPUSRGP_FRPUSER"
  add_foreign_key "FRPUSROB", "FRPOBJ", column: "OBJECT_ID", primary_key: "OBJECT_ID", name: "FK_FRPUSROB_2_FRPOBJ_1"
  add_foreign_key "FRPUSRVL", "FRPFLVAL", column: "VAL_ID", primary_key: "VAL_ID", name: "FK_FRPUSRVL_2_FRPFLVAL_1"
end
