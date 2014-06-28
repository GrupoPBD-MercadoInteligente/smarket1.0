# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140627170205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clase_unit", primary_key: "clase_id", force: true do |t|
    t.integer "cla_clase_id"
    t.string  "clase_nombre", limit: 256
  end

  add_index "clase_unit", ["cla_clase_id"], name: "relationship_50_fk", using: :btree
  add_index "clase_unit", ["clase_id"], name: "clase_pk", unique: true, using: :btree

  create_table "comision", primary_key: "comision_id", force: true do |t|
    t.integer "transaccion_id", null: false
    t.integer "comision_monto"
  end

  add_index "comision", ["comision_id"], name: "comision_pk", unique: true, using: :btree
  add_index "comision", ["transaccion_id"], name: "relationship_36_fk", using: :btree

  create_table "compra_remate", primary_key: "comprasubasta_id", force: true do |t|
    t.integer "tipo_trans_id",       null: false
    t.integer "usuario_id",          null: false
    t.integer "prod_sub_id",         null: false
    t.integer "usu_usuario_id",      null: false
    t.date    "comprasubasta_fecha"
  end

  add_index "compra_remate", ["comprasubasta_id"], name: "comprasubasta_pk", unique: true, using: :btree
  add_index "compra_remate", ["prod_sub_id"], name: "relationship_39_fk", using: :btree
  add_index "compra_remate", ["tipo_trans_id"], name: "inheritance_5_fk", using: :btree
  add_index "compra_remate", ["usu_usuario_id"], name: "relationship_38_fk", using: :btree
  add_index "compra_remate", ["usuario_id"], name: "relationship_37_fk", using: :btree

  create_table "compra_venta_especial", primary_key: "compraventa_id", force: true do |t|
    t.integer "tipo_trans_id",        null: false
    t.integer "usuario_id",           null: false
    t.integer "prod_of_nec_id",       null: false
    t.integer "usu_usuario_id",       null: false
    t.date    "compraventanor_fecha"
  end

  add_index "compra_venta_especial", ["compraventa_id"], name: "compra_venta_especial_pk", unique: true, using: :btree
  add_index "compra_venta_especial", ["prod_of_nec_id"], name: "relationship_46_fk", using: :btree
  add_index "compra_venta_especial", ["tipo_trans_id"], name: "inheritance_6_fk", using: :btree
  add_index "compra_venta_especial", ["usu_usuario_id"], name: "relationship_27_fk", using: :btree
  add_index "compra_venta_especial", ["usuario_id"], name: "relationship_20_fk", using: :btree

  create_table "compra_venta_normal", primary_key: "compraventa_id2", force: true do |t|
    t.integer "tipo_trans_id",        null: false
    t.integer "usuario_id",           null: false
    t.integer "usu_usuario_id",       null: false
    t.integer "producto_of_id",       null: false
    t.date    "compraventanor_fecha"
  end

  add_index "compra_venta_normal", ["compraventa_id2"], name: "compra_venta_normal_pk", unique: true, using: :btree
  add_index "compra_venta_normal", ["producto_of_id"], name: "relationship_30_fk", using: :btree
  add_index "compra_venta_normal", ["tipo_trans_id"], name: "inheritance_7_fk", using: :btree
  add_index "compra_venta_normal", ["usu_usuario_id"], name: "relationship_32_fk", using: :btree
  add_index "compra_venta_normal", ["usuario_id"], name: "relationship_31_fk", using: :btree

  create_table "comuna", primary_key: "comuna_id", force: true do |t|
    t.integer "provincia_id",              null: false
    t.string  "comuna_nombre", limit: 128
  end

  add_index "comuna", ["comuna_id"], name: "comuna_pk", unique: true, using: :btree
  add_index "comuna", ["provincia_id"], name: "relationship_35_fk", using: :btree

  create_table "condicion", primary_key: "condicion_id", force: true do |t|
    t.integer "tipo_trans_id",                 null: false
    t.float   "condicion_porcentaje_comision"
  end

  add_index "condicion", ["condicion_id"], name: "condicion_pk", unique: true, using: :btree
  add_index "condicion", ["tipo_trans_id"], name: "relationship_41_fk", using: :btree

  create_table "est_prod_of_nec", primary_key: "estado_prod_of_necesidad_id", force: true do |t|
    t.string "estado_prod_of_necesidad_nombre", limit: 256
  end

  add_index "est_prod_of_nec", ["estado_prod_of_necesidad_id"], name: "estado_producto_ofertado_para_necesidad_pk", unique: true, using: :btree

  create_table "estado_notificacion", primary_key: "estado_not_id", force: true do |t|
    t.string "estado_not_nombre", limit: 128
  end

  add_index "estado_notificacion", ["estado_not_id"], name: "estado_notificacion_pk", unique: true, using: :btree

  create_table "estado_remate", primary_key: "estado_subasta_id", force: true do |t|
    t.string "estado_subasta_nombre", limit: 256
  end

  add_index "estado_remate", ["estado_subasta_id"], name: "estado_subasta_pk", unique: true, using: :btree

  create_table "ganancia_liquida", primary_key: "ganancia_liquida_id", force: true do |t|
    t.integer "transaccion_id",         null: false
    t.integer "ganancia_liquida_monto"
  end

  add_index "ganancia_liquida", ["ganancia_liquida_id"], name: "ganancia_liquida_pk", unique: true, using: :btree
  add_index "ganancia_liquida", ["transaccion_id"], name: "relationship_42_fk", using: :btree

  create_table "notificacion", primary_key: "notificacion_id", force: true do |t|
    t.integer "usuario_id",                      null: false
    t.integer "estado_not_id",                   null: false
    t.string  "notificacio_titulo", limit: 128
    t.string  "notificacion_texto", limit: 1024
  end

  add_index "notificacion", ["estado_not_id"], name: "relationship_47_fk", using: :btree
  add_index "notificacion", ["notificacion_id"], name: "notificacion_pk", unique: true, using: :btree
  add_index "notificacion", ["usuario_id"], name: "relationship_45_fk", using: :btree

  create_table "prod_of_nec", primary_key: "prod_of_nec_id", force: true do |t|
    t.integer "producto_id",                   null: false
    t.integer "usuario_id",                    null: false
    t.integer "estado_prod_of_necesidad_id",   null: false
    t.integer "prod_nec_id",                   null: false
    t.integer "prod_of_nec_cantidad"
    t.integer "prod_of_nec_precio_unitario"
    t.date    "prod_of_nec_fecha_publicacion"
  end

  add_index "prod_of_nec", ["estado_prod_of_necesidad_id"], name: "relationship_54_fk", using: :btree
  add_index "prod_of_nec", ["prod_nec_id"], name: "relationship_40_fk", using: :btree
  add_index "prod_of_nec", ["prod_of_nec_id"], name: "producto_ofertado_para_necesidad_pk", unique: true, using: :btree
  add_index "prod_of_nec", ["producto_id"], name: "inheritance_3_fk", using: :btree
  add_index "prod_of_nec", ["usuario_id"], name: "relationship_52_fk", using: :btree

  create_table "producto", primary_key: "producto_id", force: true do |t|
    t.integer "clase_id"
    t.string  "producto_nombre", limit: 1024
    t.string  "avatar"
  end

  add_index "producto", ["clase_id"], name: "relationship_14_fk", using: :btree
  add_index "producto", ["producto_id"], name: "producto_pk", unique: true, using: :btree

  create_table "producto_necesitado", primary_key: "prod_nec_id", force: true do |t|
    t.integer "producto_id",                null: false
    t.integer "usuario_id",                 null: false
    t.integer "prod_nec_cantidad"
    t.integer "prod_nec_preciotope"
    t.date    "prod_nec_fecha_publicacion"
  end

  add_index "producto_necesitado", ["prod_nec_id"], name: "producto_necesitado_pk", unique: true, using: :btree
  add_index "producto_necesitado", ["producto_id"], name: "inheritance_1_fk", using: :btree
  add_index "producto_necesitado", ["usuario_id"], name: "relationship_43_fk", using: :btree

  create_table "producto_ofertado", primary_key: "producto_of_id", force: true do |t|
    t.integer "producto_id",                   null: false
    t.integer "usuario_id",                    null: false
    t.integer "producto_of_cantidad"
    t.integer "producto_of_precio_unitario"
    t.date    "producto_of_fecha_publicacion"
  end

  add_index "producto_ofertado", ["producto_id"], name: "inheritance_4_fk", using: :btree
  add_index "producto_ofertado", ["producto_of_id"], name: "producto_ofertado_pk", unique: true, using: :btree
  add_index "producto_ofertado", ["usuario_id"], name: "relationship_44_fk", using: :btree

  create_table "producto_rematado", primary_key: "prod_sub_id", force: true do |t|
    t.integer "producto_id",              null: false
    t.integer "prod_sub_cantidad"
    t.integer "prod_sub_precio_unitario"
  end

  add_index "producto_rematado", ["prod_sub_id"], name: "producto_subastado_pk", unique: true, using: :btree
  add_index "producto_rematado", ["producto_id"], name: "inheritance_2_fk", using: :btree

  create_table "propiedad", primary_key: "propiedad_id", force: true do |t|
    t.string "propiedad_nombre", limit: 1024
  end

  add_index "propiedad", ["propiedad_id"], name: "propiedad_pk", unique: true, using: :btree

  create_table "propiedadclase", id: false, force: true do |t|
    t.integer "propiedad_id", null: false
    t.integer "clase_id",     null: false
  end

  add_index "propiedadclase", ["clase_id"], name: "relationship_17_fk", using: :btree
  add_index "propiedadclase", ["propiedad_id"], name: "relationship_18_fk", using: :btree

  create_table "provincia_unit", primary_key: "provincia_id", force: true do |t|
    t.integer "region_id",                    null: false
    t.string  "provincia_nombre", limit: 128
  end

  add_index "provincia_unit", ["provincia_id"], name: "provincia_pk", unique: true, using: :btree
  add_index "provincia_unit", ["region_id"], name: "relationship_49_fk", using: :btree

  create_table "puja", primary_key: "puja_id", force: true do |t|
    t.integer "sub_id",           null: false
    t.integer "usuario_id",       null: false
    t.integer "puja_valor"
    t.integer "puja_correlativo"
  end

  add_index "puja", ["puja_id"], name: "puja_pk", unique: true, using: :btree
  add_index "puja", ["sub_id"], name: "relationship_48_fk", using: :btree
  add_index "puja", ["usuario_id"], name: "relationship_4_fk", using: :btree

  create_table "region", primary_key: "region_id", force: true do |t|
    t.string "region_nombre", limit: 128
  end

  add_index "region", ["region_id"], name: "region_pk", unique: true, using: :btree

  create_table "remate", primary_key: "sub_id", force: true do |t|
    t.integer "estado_subasta_id", null: false
    t.integer "usuario_id",        null: false
    t.integer "prod_sub_id",       null: false
    t.integer "sub_monto_max"
    t.date    "sub_fecha_inicio"
    t.date    "sub_fecha_termino"
  end

  add_index "remate", ["estado_subasta_id"], name: "relationship_13_fk", using: :btree
  add_index "remate", ["prod_sub_id"], name: "relationship_19_fk", using: :btree
  add_index "remate", ["sub_id"], name: "subasta_pk", unique: true, using: :btree
  add_index "remate", ["usuario_id"], name: "relationship_3_fk", using: :btree

  create_table "tipo_transaccion", primary_key: "tipo_trans_id", force: true do |t|
  end

  add_index "tipo_transaccion", ["tipo_trans_id"], name: "tipo_transaccion_pk", unique: true, using: :btree

  create_table "transaccion", primary_key: "transaccion_id", force: true do |t|
    t.integer "tipo_trans_id"
  end

  add_index "transaccion", ["tipo_trans_id"], name: "relationship_51_fk", using: :btree
  add_index "transaccion", ["transaccion_id"], name: "transaccion_pk", unique: true, using: :btree

  create_table "usuario", primary_key: "usuario_id", force: true do |t|
    t.integer  "comuna_id",                                        null: false
    t.string   "usuario_nombre",         limit: 256
    t.string   "usuario_apellidopat",    limit: 256
    t.string   "usuario_apellidomat",    limit: 256
    t.string   "usuario_rut",            limit: 1024
    t.string   "email",                  limit: 1024
    t.string   "usuario_nombre_usuario", limit: 256
    t.string   "password",               limit: 128
    t.boolean  "usuario_vip"
    t.string   "usuario_calle",          limit: 128
    t.integer  "usuario_numero_calle",   limit: 2
    t.string   "usuario_villa",          limit: 128
    t.integer  "usuario_numero_depto",   limit: 2
    t.integer  "usuario_bloque",         limit: 2
    t.string   "encrypted_password",                  default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "usuario", ["comuna_id"], name: "relationship_34_fk", using: :btree
  add_index "usuario", ["reset_password_token"], name: "index_usuario_on_reset_password_token", unique: true, using: :btree
  add_index "usuario", ["usuario_id"], name: "usuario_pk", unique: true, using: :btree

  create_table "valor", primary_key: "valor_id", force: true do |t|
    t.integer "propiedad_id",              null: false
    t.integer "producto_id",               null: false
    t.string  "valor_nombre", limit: 1024
  end

  add_index "valor", ["producto_id"], name: "relationship_15_fk", using: :btree
  add_index "valor", ["propiedad_id"], name: "relationship_16_fk", using: :btree
  add_index "valor", ["valor_id"], name: "valor_pk", unique: true, using: :btree

end
