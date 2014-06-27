# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lista_regiones = [
	[1, "I REGIÓN DE TARAPACÁ"],
	[2, "II REGIÓN DE ANTOFAGASTA"],
	[3, "III REGIÓN DE ATACAMA"],
	[4, "IV REGIÓN DE COQUIMBO"],
	[5, "V REGIÓN DE VALPARAÍSO"],
	[6, "VI REGIÓN DEL LIBERTADOR GRAL. BERNARDO O\'HIGGINS"],
	[7, "VII REGIÓN DEL MAULE"],
	[8, "VIII REGIÓN DEL BIOBÍO"],
	[9, "IX REGIÓN DE LA ARAUCANÍA"],
	[10, "X REGIÓN DE LOS LAGOS"],
	[11, "XI REGIÓN DE AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO"],
	[12, "XII REGIÓN DE MAGALLANES Y DE LA ANTÁRTICA CHILENA"],
	[13, "XIII REGIÓN METROPOLITANA DE SANTIAGO"],
	[14, "XIV REGIÓN DE LOS RÍOS"],
	[15, "XV REGIÓN DE ARICA Y PARINACOTA"]
]

lista_regiones.each do |id, nombre|
	Region.create(region_id: id, region_nombre: nombre)
end

[
{:provincia_id => 1, :region_id => 1, :provincia_nombre => "Iquique"},
{:provincia_id => 2, :region_id => 1, :provincia_nombre => "Tamarugal"},
{:provincia_id => 3, :region_id => 2, :provincia_nombre => "Antofagasta"},
{:provincia_id => 4, :region_id => 2, :provincia_nombre => "El Loa"},
{:provincia_id => 5, :region_id => 2, :provincia_nombre => "Tocopilla"},
{:provincia_id => 6, :region_id => 3, :provincia_nombre => "Copiapó"},
{:provincia_id => 7, :region_id => 3, :provincia_nombre => "Chañaral"},
{:provincia_id => 8, :region_id => 3, :provincia_nombre => "Huasco"},
{:provincia_id => 9, :region_id => 4, :provincia_nombre => "Elqui"},
{:provincia_id => 10, :region_id => 4, :provincia_nombre => "Choapa"},
{:provincia_id => 11, :region_id => 4, :provincia_nombre => "Limarí"},
{:provincia_id => 12, :region_id => 5, :provincia_nombre => "Valparaíso"},
{:provincia_id => 13, :region_id => 5, :provincia_nombre => "Isla de Pascua"},
{:provincia_id => 14, :region_id => 5, :provincia_nombre => "Los Andes"},
{:provincia_id => 15, :region_id => 5, :provincia_nombre => "Petorca"},
{:provincia_id => 16, :region_id => 5, :provincia_nombre => "Quillota"},
{:provincia_id => 17, :region_id => 5, :provincia_nombre => "San Antonio"},
{:provincia_id => 18, :region_id => 5, :provincia_nombre => "San Felipe de Aconcagua"},
{:provincia_id => 19, :region_id => 5, :provincia_nombre => "Marga Marga"},
{:provincia_id => 20, :region_id => 5, :provincia_nombre => "Cachapoal"},
{:provincia_id => 21, :region_id => 5, :provincia_nombre => "Cardenal Caro"},
{:provincia_id => 22, :region_id => 5, :provincia_nombre => "Colchagua"},
{:provincia_id => 23, :region_id => 7, :provincia_nombre => "Talca"},
{:provincia_id => 24, :region_id => 7, :provincia_nombre => "Cauquenes"},
{:provincia_id => 25, :region_id => 7, :provincia_nombre => "Curicó"},
{:provincia_id => 26, :region_id => 7, :provincia_nombre => "Linares"},
{:provincia_id => 27, :region_id => 8, :provincia_nombre => "Concepción"},
{:provincia_id => 28, :region_id => 8, :provincia_nombre => "Arauco"},
{:provincia_id => 29, :region_id => 8, :provincia_nombre => "Biobío"},
{:provincia_id => 30, :region_id => 8, :provincia_nombre => "Ñuble"},
{:provincia_id => 31, :region_id => 9, :provincia_nombre => "Cautín"},
{:provincia_id => 32, :region_id => 9, :provincia_nombre => "Malleco"},
{:provincia_id => 33, :region_id => 10, :provincia_nombre => "Valdivia"},
{:provincia_id => 34, :region_id => 10, :provincia_nombre => "Ranco"},
{:provincia_id => 35, :region_id => 11, :provincia_nombre => "Llanquihue"},
{:provincia_id => 36, :region_id => 11, :provincia_nombre => "Chiloé"},
{:provincia_id => 37, :region_id => 11, :provincia_nombre => "Osorno"},
{:provincia_id => 38, :region_id => 11, :provincia_nombre => "Palena"},
{:provincia_id => 39, :region_id => 12, :provincia_nombre => "Coihaique"},
{:provincia_id => 40, :region_id => 12, :provincia_nombre => "Aisén"},
{:provincia_id => 41, :region_id => 12, :provincia_nombre => "Capitán Prat"},
{:provincia_id => 42, :region_id => 12, :provincia_nombre => "General Carrera"},
{:provincia_id => 43, :region_id => 13, :provincia_nombre => "Magallanes"},
{:provincia_id => 44, :region_id => 13, :provincia_nombre => "Antártica Chilena"},
{:provincia_id => 45, :region_id => 13, :provincia_nombre => "Tierra del Fuego"},
{:provincia_id => 46, :region_id => 13, :provincia_nombre => "Ultima Esperanza"},
{:provincia_id => 47, :region_id => 14, :provincia_nombre => "Santiago"},
{:provincia_id => 48, :region_id => 14, :provincia_nombre => "Cordillera"},
{:provincia_id => 49, :region_id => 14, :provincia_nombre => "Chacabuco"},
{:provincia_id => 50, :region_id => 14, :provincia_nombre => "Maipo"},
{:provincia_id => 51, :region_id => 14, :provincia_nombre => "Melipilla"},
{:provincia_id => 52, :region_id => 14, :provincia_nombre => "Talagante"},
{:provincia_id => 53, :region_id => 15, :provincia_nombre => "Arica"},
{:provincia_id => 54, :region_id => 15, :provincia_nombre => "Parinacota"},

].each do |provincia_unit|
	ProvinciaUnit.find_or_create_by(provincia_unit)
end

[
	{:comuna_id => 1,  :provincia_id => 1, :comuna_nombre => "Iquique"},
	{:comuna_id => 2,  :provincia_id => 1, :comuna_nombre => "Alto Hospicio"},
	{:comuna_id => 3,  :provincia_id => 2, :comuna_nombre => "Pozo Almonte"},
	{:comuna_id => 4,  :provincia_id => 2, :comuna_nombre => "Camiña"},
	{:comuna_id => 5,  :provincia_id => 2, :comuna_nombre => "Colchane"},
	{:comuna_id => 6,  :provincia_id => 2, :comuna_nombre => "Huara"},
	{:comuna_id => 7,  :provincia_id => 2, :comuna_nombre => "Pica"},
	{:comuna_id => 8,  :provincia_id => 3, :comuna_nombre => "Antofagasta"},
	{:comuna_id => 9,  :provincia_id => 3, :comuna_nombre => "Mejillones"},
	{:comuna_id => 10, :provincia_id => 3, :comuna_nombre => "Sierra Gorda"},
	{:comuna_id => 11, :provincia_id => 3, :comuna_nombre => "Taltal"},
	{:comuna_id => 12, :provincia_id => 4, :comuna_nombre => "Calama"},
	{:comuna_id => 13, :provincia_id => 4, :comuna_nombre => "Ollagüe"},
	{:comuna_id => 14, :provincia_id => 4, :comuna_nombre => "San Pedro de Atacama"},
	{:comuna_id => 15, :provincia_id => 5, :comuna_nombre => "Tocopilla"},
	{:comuna_id => 16, :provincia_id => 5, :comuna_nombre => "María Elena"},
	{:comuna_id => 17, :provincia_id => 6, :comuna_nombre => "Copiapó"},
	{:comuna_id => 18, :provincia_id => 6, :comuna_nombre => "Caldera"},
	{:comuna_id => 19, :provincia_id => 6, :comuna_nombre => "Tierra Amarilla"},
	{:comuna_id => 20, :provincia_id => 7, :comuna_nombre => "Chañaral"},
	{:comuna_id => 21, :provincia_id => 7, :comuna_nombre => "Diego de Almagro"},
	{:comuna_id => 22, :provincia_id => 8, :comuna_nombre => "Vallenar"},
	{:comuna_id => 23, :provincia_id => 8, :comuna_nombre => "Alto del Carmen"},
	{:comuna_id => 24, :provincia_id => 8, :comuna_nombre => "Freirina"},
	{:comuna_id => 25, :provincia_id => 8, :comuna_nombre => "Huasco"},
	{:comuna_id => 26, :provincia_id => 9, :comuna_nombre => "La Serena"},
	{:comuna_id => 27, :provincia_id => 9, :comuna_nombre => "Coquimbo"},
	{:comuna_id => 28, :provincia_id => 9, :comuna_nombre => "Andacollo"},
	{:comuna_id => 29, :provincia_id => 9, :comuna_nombre => "La Higuera"},
	{:comuna_id => 30, :provincia_id => 9, :comuna_nombre => "Paiguano"},
	{:comuna_id => 31, :provincia_id => 9, :comuna_nombre => "Vicuña"},
	{:comuna_id => 32, :provincia_id => 10, :comuna_nombre => "Illapel"},
	{:comuna_id => 33, :provincia_id => 10, :comuna_nombre => "Canela"},
	{:comuna_id => 34, :provincia_id => 10, :comuna_nombre => "Los Vilos"},
	{:comuna_id => 35, :provincia_id => 10, :comuna_nombre => "Salamanca"},
	{:comuna_id => 36, :provincia_id => 11, :comuna_nombre => "Ovalle"},
	{:comuna_id => 37, :provincia_id => 11, :comuna_nombre => "Combarbalá"},
	{:comuna_id => 38, :provincia_id => 11, :comuna_nombre => "Monte Patria"},
	{:comuna_id => 39, :provincia_id => 11, :comuna_nombre => "Punitaqui"},
	{:comuna_id => 40, :provincia_id => 11, :comuna_nombre => "Río Hurtado"},
	{:comuna_id => 41, :provincia_id => 12, :comuna_nombre => "Valparaíso"},
	{:comuna_id => 42, :provincia_id => 12, :comuna_nombre => "Casablanca"},
	{:comuna_id => 43, :provincia_id => 12, :comuna_nombre => "Concón"},
	{:comuna_id => 44, :provincia_id => 12, :comuna_nombre => "Juan Fernández"},
	{:comuna_id => 45, :provincia_id => 12, :comuna_nombre => "Puchuncaví"},
	{:comuna_id => 46, :provincia_id => 12, :comuna_nombre => "Quintero"},
	{:comuna_id => 47, :provincia_id => 12, :comuna_nombre => "Viña del Mar"},
	{:comuna_id => 48, :provincia_id => 13, :comuna_nombre => "Isla de Pascua"},
	{:comuna_id => 49, :provincia_id => 14, :comuna_nombre => "Los Andes"},
	{:comuna_id => 50, :provincia_id => 14, :comuna_nombre => "Calle Larga"},
	{:comuna_id => 51, :provincia_id => 14, :comuna_nombre => "Rinconada"},
	{:comuna_id => 52, :provincia_id => 14, :comuna_nombre => "San Esteban"},
	{:comuna_id => 53, :provincia_id => 15, :comuna_nombre => "La Ligua"},
	{:comuna_id => 54, :provincia_id => 15, :comuna_nombre => "Cabildo"},
	{:comuna_id => 55, :provincia_id => 15, :comuna_nombre => "Papudo"},
	{:comuna_id => 56, :provincia_id => 15, :comuna_nombre => "Petorca"},
	{:comuna_id => 57, :provincia_id => 15, :comuna_nombre => "Zapallar"},
	{:comuna_id => 58, :provincia_id => 16, :comuna_nombre => "La Ligua"},
	{:comuna_id => 59, :provincia_id => 16, :comuna_nombre => "Cabildo"},
	{:comuna_id => 60, :provincia_id => 16, :comuna_nombre => "Papudo"},
	{:comuna_id => 61, :provincia_id => 16, :comuna_nombre => "Petorca"},
	{:comuna_id => 62, :provincia_id => 16, :comuna_nombre => "Zapallar"},
	{:comuna_id => 63, :provincia_id => 17, :comuna_nombre => "San Antonio"},
	{:comuna_id => 64, :provincia_id => 17, :comuna_nombre => "Algarrobo"},
	{:comuna_id => 65, :provincia_id => 17, :comuna_nombre => "Cartagena"},
	{:comuna_id => 66, :provincia_id => 17, :comuna_nombre => "El Quisco"},
	{:comuna_id => 67, :provincia_id => 17, :comuna_nombre => "El Tabo"},
	{:comuna_id => 68, :provincia_id => 17, :comuna_nombre => "Santo Domingo"},
	{:comuna_id => 69, :provincia_id => 18, :comuna_nombre => "San Felipe"},
	{:comuna_id => 70, :provincia_id => 18, :comuna_nombre => "Catemu"},
	{:comuna_id => 71, :provincia_id => 18, :comuna_nombre => "Llaillay"},
	{:comuna_id => 72, :provincia_id => 18, :comuna_nombre => "Panquehue"},
	{:comuna_id => 73, :provincia_id => 18, :comuna_nombre => "Putaendo"},
	{:comuna_id => 74, :provincia_id => 18, :comuna_nombre => "Santa María"},
	{:comuna_id => 75, :provincia_id => 19, :comuna_nombre => "Limache"},
	{:comuna_id => 76, :provincia_id => 19, :comuna_nombre => "Quilpué"},
	{:comuna_id => 77, :provincia_id => 19, :comuna_nombre => "Villa Alemana"},
	{:comuna_id => 78, :provincia_id => 19, :comuna_nombre => "Olmué"},
	{:comuna_id => 79, :provincia_id => 20, :comuna_nombre => "Rancagua"},
	{:comuna_id => 80, :provincia_id => 20, :comuna_nombre => "Codegua"},
	{:comuna_id => 81, :provincia_id => 20, :comuna_nombre => "Coinco"},
	{:comuna_id => 82, :provincia_id => 20, :comuna_nombre => "Coltauco"},
	{:comuna_id => 83, :provincia_id => 20, :comuna_nombre => "Doñihue"},
	{:comuna_id => 84, :provincia_id => 20, :comuna_nombre => "Graneros"},
	{:comuna_id => 85, :provincia_id => 20, :comuna_nombre => "Las Cabras"},
	{:comuna_id => 86, :provincia_id => 20, :comuna_nombre => "Machalí"},
	{:comuna_id => 87, :provincia_id => 20, :comuna_nombre => "Malloa"},
	{:comuna_id => 88, :provincia_id => 20, :comuna_nombre => "Mostazal"},
	{:comuna_id => 89, :provincia_id => 20, :comuna_nombre => "Olivar"},
	{:comuna_id => 90, :provincia_id => 20, :comuna_nombre => "Peumo"},
	{:comuna_id => 91, :provincia_id => 20, :comuna_nombre => "Pichidegua"},
	{:comuna_id => 92, :provincia_id => 20, :comuna_nombre => "Quinta de Tilcoco"},
	{:comuna_id => 93, :provincia_id => 20, :comuna_nombre => "Rengo"},
	{:comuna_id => 94, :provincia_id => 20, :comuna_nombre => "Requínoa"},
	{:comuna_id => 95, :provincia_id => 20, :comuna_nombre => "San Vicente"},
	{:comuna_id => 96, :provincia_id => 21, :comuna_nombre => "Pichilemu"},
	{:comuna_id => 97, :provincia_id => 21, :comuna_nombre => "La Estrella"},
	{:comuna_id => 98, :provincia_id => 21, :comuna_nombre => "Litueche"},
	{:comuna_id => 99, :provincia_id => 21, :comuna_nombre => "Marchihue"},
	{:comuna_id => 100,:provincia_id => 21, :comuna_nombre => "Navidad"},
	{:comuna_id => 101,:provincia_id => 21, :comuna_nombre => "Paredones"},
	{:comuna_id => 102,:provincia_id => 22, :comuna_nombre => "San Fernando"},
	{:comuna_id => 103,:provincia_id => 22, :comuna_nombre => "Chépica"},
	{:comuna_id => 104,:provincia_id => 22, :comuna_nombre => "Chimbarongo"},
	{:comuna_id => 105,:provincia_id => 22, :comuna_nombre => "Lolol"},
	{:comuna_id => 106,:provincia_id => 22, :comuna_nombre => "Nancagua"},
	{:comuna_id => 107,:provincia_id => 22, :comuna_nombre => "Palmilla"},
	{:comuna_id => 108,:provincia_id => 22, :comuna_nombre => "Peralillo"},
	{:comuna_id => 109,:provincia_id => 22, :comuna_nombre => "Placilla"},
	{:comuna_id => 110,:provincia_id => 22, :comuna_nombre => "Pumanque"},
	{:comuna_id => 111,:provincia_id => 22, :comuna_nombre => "Santa Cruz"},
	{:comuna_id => 112,:provincia_id => 23, :comuna_nombre => "Talca"},
	{:comuna_id => 113,:provincia_id => 23, :comuna_nombre => "Constitución"},
	{:comuna_id => 114,:provincia_id => 23, :comuna_nombre => "Curepto"},
	{:comuna_id => 115,:provincia_id => 23, :comuna_nombre => "Empedrado"},
	{:comuna_id => 116,:provincia_id => 23, :comuna_nombre => "Maule"},
	{:comuna_id => 117,:provincia_id => 23, :comuna_nombre => "Pelarco"},
	{:comuna_id => 118,:provincia_id => 23, :comuna_nombre => "Pencahue"},
	{:comuna_id => 119,:provincia_id => 23, :comuna_nombre => "Río Claro"},
	{:comuna_id => 120,:provincia_id => 23, :comuna_nombre => "San Clemente"},
	{:comuna_id => 121,:provincia_id => 23, :comuna_nombre => "San Rafael"},
	{:comuna_id => 122,:provincia_id => 24, :comuna_nombre => "Cauquenes"},
	{:comuna_id => 123,:provincia_id => 24, :comuna_nombre => "Chanco"},
	{:comuna_id => 124,:provincia_id => 24, :comuna_nombre => "Pelluhue"},
	{:comuna_id => 125,:provincia_id => 25, :comuna_nombre => "Curicó"},
	{:comuna_id => 126,:provincia_id => 25, :comuna_nombre => "Hualañé"},
	{:comuna_id => 127,:provincia_id => 25, :comuna_nombre => "Licantén"},
	{:comuna_id => 128,:provincia_id => 25, :comuna_nombre => "Molina"},
	{:comuna_id => 129,:provincia_id => 25, :comuna_nombre => "Rauco"},
	{:comuna_id => 130,:provincia_id => 25, :comuna_nombre => "Romeral"},
	{:comuna_id => 131,:provincia_id => 25, :comuna_nombre => "Sagrada Familia"},
	{:comuna_id => 132,:provincia_id => 25, :comuna_nombre => "Teno"},
	{:comuna_id => 133,:provincia_id => 25, :comuna_nombre => "Vichuquén"},
	{:comuna_id => 134,:provincia_id => 26, :comuna_nombre => "Linares"},
	{:comuna_id => 135,:provincia_id => 26, :comuna_nombre => "Colbún"},
	{:comuna_id => 136,:provincia_id => 26, :comuna_nombre => "Longaví"},
	{:comuna_id => 137,:provincia_id => 26, :comuna_nombre => "Parral"},
	{:comuna_id => 138,:provincia_id => 26, :comuna_nombre => "Retiro"},
	{:comuna_id => 139,:provincia_id => 26, :comuna_nombre => "San Javier"},
	{:comuna_id => 140,:provincia_id => 26, :comuna_nombre => "Villa Alegre"},
	{:comuna_id => 141,:provincia_id => 26, :comuna_nombre => "Yerbas Buenas"},
	{:comuna_id => 142,:provincia_id => 27, :comuna_nombre => "Concepción"},
	{:comuna_id => 143,:provincia_id => 27, :comuna_nombre => "Coronel"},
	{:comuna_id => 144,:provincia_id => 27, :comuna_nombre => "Chiguayante"},
	{:comuna_id => 145,:provincia_id => 27, :comuna_nombre => "Florida"},
	{:comuna_id => 146,:provincia_id => 27, :comuna_nombre => "Hualqui"},
	{:comuna_id => 147,:provincia_id => 27, :comuna_nombre => "Lota"},
	{:comuna_id => 148,:provincia_id => 27, :comuna_nombre => "Penco"},
	{:comuna_id => 149,:provincia_id => 27, :comuna_nombre => "San Pedro de la Paz"},
	{:comuna_id => 150,:provincia_id => 27, :comuna_nombre => "Santa Juana"},
	{:comuna_id => 151,:provincia_id => 27, :comuna_nombre => "Talcahuano"},
	{:comuna_id => 152,:provincia_id => 27, :comuna_nombre => "Tomé"},
	{:comuna_id => 153,:provincia_id => 27, :comuna_nombre => "Hualpén"},
	{:comuna_id => 154,:provincia_id => 28, :comuna_nombre => "Lebu"},
	{:comuna_id => 155,:provincia_id => 28, :comuna_nombre => "Arauco"},
	{:comuna_id => 156,:provincia_id => 28, :comuna_nombre => "Cañete"},
	{:comuna_id => 157,:provincia_id => 28, :comuna_nombre => "Contulmo"},
	{:comuna_id => 158,:provincia_id => 28, :comuna_nombre => "Curanilahue"},
	{:comuna_id => 159,:provincia_id => 28, :comuna_nombre => "Los Alamos"},
	{:comuna_id => 160,:provincia_id => 28, :comuna_nombre => "Tirúa"},
	{:comuna_id => 161,:provincia_id => 29, :comuna_nombre => "Los Angeles"},
	{:comuna_id => 162,:provincia_id => 29, :comuna_nombre => "Antuco"},
	{:comuna_id => 163,:provincia_id => 29, :comuna_nombre => "Cabrero"},
	{:comuna_id => 164,:provincia_id => 29, :comuna_nombre => "Laja"},
	{:comuna_id => 165,:provincia_id => 29, :comuna_nombre => "Mulchén"},
	{:comuna_id => 166,:provincia_id => 29, :comuna_nombre => "Nacimiento"},
	{:comuna_id => 167,:provincia_id => 29, :comuna_nombre => "Negrete"},
	{:comuna_id => 168,:provincia_id => 29, :comuna_nombre => "Quilaco"},
	{:comuna_id => 169,:provincia_id => 29, :comuna_nombre => "Quilleco"},
	{:comuna_id => 170,:provincia_id => 29, :comuna_nombre => "San Rosendo"},
	{:comuna_id => 171,:provincia_id => 29, :comuna_nombre => "Santa Bárbara"},
	{:comuna_id => 172,:provincia_id => 29, :comuna_nombre => "Tucapel"},
	{:comuna_id => 173,:provincia_id => 29, :comuna_nombre => "Yumbel"},
	{:comuna_id => 174,:provincia_id => 29, :comuna_nombre => "Alto Biobío"},
	{:comuna_id => 175,:provincia_id => 30, :comuna_nombre => "Chillán"},
	{:comuna_id => 176,:provincia_id => 30, :comuna_nombre => "Bulnes"},
	{:comuna_id => 177,:provincia_id => 30, :comuna_nombre => "Cobquecura"},
	{:comuna_id => 178,:provincia_id => 30, :comuna_nombre => "Coelemu"},
	{:comuna_id => 179,:provincia_id => 30, :comuna_nombre => "Coihueco"},
	{:comuna_id => 180,:provincia_id => 30, :comuna_nombre => "Chillán Viejo"},
	{:comuna_id => 181,:provincia_id => 30, :comuna_nombre => "El Carmen"},
	{:comuna_id => 182,:provincia_id => 30, :comuna_nombre => "Ninhue"},
	{:comuna_id => 183,:provincia_id => 30, :comuna_nombre => "Ñiquén"},
	{:comuna_id => 184,:provincia_id => 30, :comuna_nombre => "Pemuco"},
	{:comuna_id => 185,:provincia_id => 30, :comuna_nombre => "Pinto"},
	{:comuna_id => 186,:provincia_id => 30, :comuna_nombre => "Portezuelo"},
	{:comuna_id => 187,:provincia_id => 30, :comuna_nombre => "Quillón"},
	{:comuna_id => 188,:provincia_id => 30, :comuna_nombre => "Quirihue"},
	{:comuna_id => 189,:provincia_id => 30, :comuna_nombre => "Ránquil"},
	{:comuna_id => 190,:provincia_id => 30, :comuna_nombre => "San Carlos"},
	{:comuna_id => 191,:provincia_id => 30, :comuna_nombre => "San Fabián"},
	{:comuna_id => 192,:provincia_id => 30, :comuna_nombre => "San Ignacio"},
	{:comuna_id => 193,:provincia_id => 30, :comuna_nombre => "San Nicolás"},
	{:comuna_id => 194,:provincia_id => 30, :comuna_nombre => "Treguaco"},
	{:comuna_id => 195,:provincia_id => 30, :comuna_nombre => "Yungay"},
	{:comuna_id => 196,:provincia_id => 31, :comuna_nombre => "Temuco"},
	{:comuna_id => 197,:provincia_id => 31, :comuna_nombre => "Carahue"},
	{:comuna_id => 198,:provincia_id => 31, :comuna_nombre => "Cunco"},
	{:comuna_id => 199,:provincia_id => 31, :comuna_nombre => "Curarrehue"},
	{:comuna_id => 200,:provincia_id => 31, :comuna_nombre => "Freire"},
	{:comuna_id => 201,:provincia_id => 31, :comuna_nombre => "Galvarino"},
	{:comuna_id => 202,:provincia_id => 31, :comuna_nombre => "Gorbea"},
	{:comuna_id => 203,:provincia_id => 31, :comuna_nombre => "Lautaro"},
	{:comuna_id => 204,:provincia_id => 31, :comuna_nombre => "Loncoche"},
	{:comuna_id => 205,:provincia_id => 31, :comuna_nombre => "Melipeuco"},
	{:comuna_id => 206,:provincia_id => 31, :comuna_nombre => "Nueva Imperial"},
	{:comuna_id => 207,:provincia_id => 31, :comuna_nombre => "Padre Las Casas"},
	{:comuna_id => 208,:provincia_id => 31, :comuna_nombre => "Perquenco"},
	{:comuna_id => 209,:provincia_id => 31, :comuna_nombre => "Pitrufquén"},
	{:comuna_id => 210,:provincia_id => 31, :comuna_nombre => "Pucón"},
	{:comuna_id => 211,:provincia_id => 31, :comuna_nombre => "Saavedra"},
	{:comuna_id => 212,:provincia_id => 31, :comuna_nombre => "Teodoro Schmidt"},
	{:comuna_id => 213,:provincia_id => 31, :comuna_nombre => "Toltén"},
	{:comuna_id => 214,:provincia_id => 31, :comuna_nombre => "Vilcún"},
	{:comuna_id => 215,:provincia_id => 31, :comuna_nombre => "Villarrica"},
	{:comuna_id => 216,:provincia_id => 31, :comuna_nombre => "Cholchol"},
	{:comuna_id => 217,:provincia_id => 32, :comuna_nombre => "Angol"},
	{:comuna_id => 218,:provincia_id => 32, :comuna_nombre => "Collipulli"},
	{:comuna_id => 219,:provincia_id => 32, :comuna_nombre => "Curacautín"},
	{:comuna_id => 220,:provincia_id => 32, :comuna_nombre => "Ercilla"},
	{:comuna_id => 221,:provincia_id => 32, :comuna_nombre => "Lonquimay"},
	{:comuna_id => 222,:provincia_id => 32, :comuna_nombre => "Los Sauces"},
	{:comuna_id => 223,:provincia_id => 32, :comuna_nombre => "Lumaco"},
	{:comuna_id => 224,:provincia_id => 32, :comuna_nombre => "Purén"},
	{:comuna_id => 225,:provincia_id => 32, :comuna_nombre => "Renaico"},
	{:comuna_id => 226,:provincia_id => 32, :comuna_nombre => "Traiguén"},
	{:comuna_id => 227,:provincia_id => 32, :comuna_nombre => "Victoria"},
	{:comuna_id => 228,:provincia_id => 33, :comuna_nombre => "Valdivia"},
	{:comuna_id => 229,:provincia_id => 33, :comuna_nombre => "Corral"},
	{:comuna_id => 230,:provincia_id => 33, :comuna_nombre => "Lanco"},
	{:comuna_id => 231,:provincia_id => 33, :comuna_nombre => "Los Lagos"},
	{:comuna_id => 232,:provincia_id => 33, :comuna_nombre => "Máfil"},
	{:comuna_id => 233,:provincia_id => 33, :comuna_nombre => "Mariquina"},
	{:comuna_id => 234,:provincia_id => 33, :comuna_nombre => "Paillaco"},
	{:comuna_id => 235,:provincia_id => 33, :comuna_nombre => "Panguipulli"},
	{:comuna_id => 236,:provincia_id => 34, :comuna_nombre => "La Unión"},
	{:comuna_id => 237,:provincia_id => 34, :comuna_nombre => "Futrono"},
	{:comuna_id => 238,:provincia_id => 34, :comuna_nombre => "Lago Ranco"},
	{:comuna_id => 239,:provincia_id => 34, :comuna_nombre => "Río Bueno"},
	{:comuna_id => 240,:provincia_id => 35, :comuna_nombre => "Puerto Montt"},
	{:comuna_id => 241,:provincia_id => 35, :comuna_nombre => "Calbuco"},
	{:comuna_id => 242,:provincia_id => 35, :comuna_nombre => "Cochamó"},
	{:comuna_id => 243,:provincia_id => 35, :comuna_nombre => "Fresia"},
	{:comuna_id => 244,:provincia_id => 35, :comuna_nombre => "Frutillar"},
	{:comuna_id => 245,:provincia_id => 35, :comuna_nombre => "Los Muermos"},
	{:comuna_id => 246,:provincia_id => 35, :comuna_nombre => "Llanquihue"},
	{:comuna_id => 247,:provincia_id => 35, :comuna_nombre => "Maullín"},
	{:comuna_id => 248,:provincia_id => 35, :comuna_nombre => "Puerto Var"},
	{:comuna_id => 249,:provincia_id => 36, :comuna_nombre => "Castro"},
	{:comuna_id => 250,:provincia_id => 36, :comuna_nombre => "Ancud"},
	{:comuna_id => 251,:provincia_id => 36, :comuna_nombre => "Chonchi"},
	{:comuna_id => 252,:provincia_id => 36, :comuna_nombre => "Curaco de Vélez"},
	{:comuna_id => 253,:provincia_id => 36, :comuna_nombre => "Dalcahue"},
	{:comuna_id => 254,:provincia_id => 36, :comuna_nombre => "Puqueldón"},
	{:comuna_id => 255,:provincia_id => 36, :comuna_nombre => "Queilén"},
	{:comuna_id => 256,:provincia_id => 36, :comuna_nombre => "Quellón"},
	{:comuna_id => 257,:provincia_id => 36, :comuna_nombre => "Quemchi"},
	{:comuna_id => 258,:provincia_id => 36, :comuna_nombre => "Quinchao"},
	{:comuna_id => 259,:provincia_id => 37, :comuna_nombre => "Osorno"},
	{:comuna_id => 260,:provincia_id => 37, :comuna_nombre => "Puerto Octay"},
	{:comuna_id => 261,:provincia_id => 37, :comuna_nombre => "Purranque"},
	{:comuna_id => 262,:provincia_id => 37, :comuna_nombre => "Puyehue"},
	{:comuna_id => 263,:provincia_id => 37, :comuna_nombre => "Río Negro"},
	{:comuna_id => 264,:provincia_id => 37, :comuna_nombre => "San Juan de la Costa"},
	{:comuna_id => 265,:provincia_id => 37, :comuna_nombre => "San Pablo"},
	{:comuna_id => 266,:provincia_id => 38, :comuna_nombre => "Chaitén"},
	{:comuna_id => 267,:provincia_id => 38, :comuna_nombre => "Futaleufú"},
	{:comuna_id => 268,:provincia_id => 38, :comuna_nombre => "Hualaihué"},
	{:comuna_id => 269,:provincia_id => 38, :comuna_nombre => "Palena"},
	{:comuna_id => 270,:provincia_id => 39, :comuna_nombre => "Coihaique"},
	{:comuna_id => 271,:provincia_id => 39, :comuna_nombre => "Lago Verde"},
	{:comuna_id => 272,:provincia_id => 40, :comuna_nombre => "Aisén"},
	{:comuna_id => 273,:provincia_id => 40, :comuna_nombre => "Cisnes"},
	{:comuna_id => 274,:provincia_id => 40, :comuna_nombre => "Guaitecas"},
	{:comuna_id => 275,:provincia_id => 41, :comuna_nombre => "Cochrane"},
	{:comuna_id => 276,:provincia_id => 41, :comuna_nombre => "O\'Higgins"},
	{:comuna_id => 277,:provincia_id => 41, :comuna_nombre => "Tortel"},
	{:comuna_id => 278,:provincia_id => 42, :comuna_nombre => "Chile Chico"},
	{:comuna_id => 279,:provincia_id => 42, :comuna_nombre => "Río Ibáñez"},
	{:comuna_id => 280,:provincia_id => 43, :comuna_nombre => "Punta Arenas"},
	{:comuna_id => 281,:provincia_id => 43, :comuna_nombre => "Laguna Blanca"},
	{:comuna_id => 282,:provincia_id => 43, :comuna_nombre => "Río Verde"},
	{:comuna_id => 283,:provincia_id => 43, :comuna_nombre => "San Gregorio"},
	{:comuna_id => 284,:provincia_id => 44, :comuna_nombre => "Cabo de Hornos (Ex-Navarino)"},
	{:comuna_id => 285,:provincia_id => 44, :comuna_nombre => "Antártica"},
	{:comuna_id => 286,:provincia_id => 45, :comuna_nombre => "Porvenir"},
	{:comuna_id => 287,:provincia_id => 45, :comuna_nombre => "Primavera"},
	{:comuna_id => 288,:provincia_id => 45, :comuna_nombre => "Timaukel"},
	{:comuna_id => 289,:provincia_id => 46, :comuna_nombre => "Natales"},
	{:comuna_id => 290,:provincia_id => 46, :comuna_nombre => "Torres del Paine"},
	{:comuna_id => 291,:provincia_id => 47, :comuna_nombre => "Santiago"},
	{:comuna_id => 292,:provincia_id => 47, :comuna_nombre => "Cerrillos"},
	{:comuna_id => 293,:provincia_id => 47, :comuna_nombre => "Cerro Navia"},
	{:comuna_id => 294,:provincia_id => 47, :comuna_nombre => "Conchalí"},
	{:comuna_id => 295,:provincia_id => 47, :comuna_nombre => "El Bosque"},
	{:comuna_id => 296,:provincia_id => 47, :comuna_nombre => "Estación Central"},
	{:comuna_id => 297,:provincia_id => 47, :comuna_nombre => "Huechuraba"},
	{:comuna_id => 298,:provincia_id => 47, :comuna_nombre => "Independencia"},
	{:comuna_id => 299,:provincia_id => 47, :comuna_nombre => "La Cisterna"},
	{:comuna_id => 300,:provincia_id => 47, :comuna_nombre => "La Florida"},
	{:comuna_id => 301,:provincia_id => 47, :comuna_nombre => "La Granja"},
	{:comuna_id => 302,:provincia_id => 47, :comuna_nombre => "La Pintana"},
	{:comuna_id => 303,:provincia_id => 47, :comuna_nombre => "La Reina"},
	{:comuna_id => 304,:provincia_id => 47, :comuna_nombre => "Las Condes"},
	{:comuna_id => 305,:provincia_id => 47, :comuna_nombre => "Lo Barnechea"},
	{:comuna_id => 306,:provincia_id => 47, :comuna_nombre => "Lo Espejo"},
	{:comuna_id => 307,:provincia_id => 47, :comuna_nombre => "Lo Prado"},
	{:comuna_id => 308,:provincia_id => 47, :comuna_nombre => "Macul"},
	{:comuna_id => 309,:provincia_id => 47, :comuna_nombre => "Maipú"},
	{:comuna_id => 310,:provincia_id => 47, :comuna_nombre => "Ñuñoa"},
	{:comuna_id => 311,:provincia_id => 47, :comuna_nombre => "Pedro Aguirre Cerda"},
	{:comuna_id => 312,:provincia_id => 47, :comuna_nombre => "Peñalolén"},
	{:comuna_id => 313,:provincia_id => 47, :comuna_nombre => "Providencia"},
	{:comuna_id => 314,:provincia_id => 47, :comuna_nombre => "Pudahuel"},
	{:comuna_id => 315,:provincia_id => 47, :comuna_nombre => "Quilicura"},
	{:comuna_id => 316,:provincia_id => 47, :comuna_nombre => "Quinta Normal"},
	{:comuna_id => 317,:provincia_id => 47, :comuna_nombre => "Recoleta"},
	{:comuna_id => 318,:provincia_id => 47, :comuna_nombre => "Renca"},
	{:comuna_id => 319,:provincia_id => 47, :comuna_nombre => "San Joaquín"},
	{:comuna_id => 320,:provincia_id => 47, :comuna_nombre => "San Miguel"},
	{:comuna_id => 321,:provincia_id => 47, :comuna_nombre => "San Ramón"},
	{:comuna_id => 322,:provincia_id => 47, :comuna_nombre => "Vitacura"},
	{:comuna_id => 323,:provincia_id => 48, :comuna_nombre => "Puente Alto"},
	{:comuna_id => 324,:provincia_id => 48, :comuna_nombre => "Pirque"},
	{:comuna_id => 325,:provincia_id => 48, :comuna_nombre => "San José de Maipo"},
	{:comuna_id => 326,:provincia_id => 49, :comuna_nombre => "Colina"},
	{:comuna_id => 327,:provincia_id => 49, :comuna_nombre => "Lampa"},
	{:comuna_id => 328,:provincia_id => 49, :comuna_nombre => "Tiltil"},
	{:comuna_id => 329,:provincia_id => 50, :comuna_nombre => "San Bernardo"},
	{:comuna_id => 330,:provincia_id => 50, :comuna_nombre => "Buin"},
	{:comuna_id => 331,:provincia_id => 50, :comuna_nombre => "Calera de Tango"},
	{:comuna_id => 332,:provincia_id => 50, :comuna_nombre => "Paine"},
	{:comuna_id => 333,:provincia_id => 51, :comuna_nombre => "Melipilla"},
	{:comuna_id => 334,:provincia_id => 51, :comuna_nombre => "Alhué"},
	{:comuna_id => 335,:provincia_id => 51, :comuna_nombre => "Curacaví"},
	{:comuna_id => 336,:provincia_id => 51, :comuna_nombre => "María Pinto"},
	{:comuna_id => 337,:provincia_id => 51, :comuna_nombre => "San Pedro"},
	{:comuna_id => 338,:provincia_id => 52, :comuna_nombre => "Talagante"},
	{:comuna_id => 339,:provincia_id => 52, :comuna_nombre => "El Monte"},
	{:comuna_id => 340,:provincia_id => 52, :comuna_nombre => "Isla de Maipo"},
	{:comuna_id => 341,:provincia_id => 52, :comuna_nombre => "Padre Hurtado"},
    	{:comuna_id => 342,:provincia_id => 52, :comuna_nombre => "Peñaflor"},
	{:comuna_id => 343,:provincia_id => 53, :comuna_nombre => "Arica"},
	{:comuna_id => 344,:provincia_id => 53, :comuna_nombre => "Camarones"},
	{:comuna_id => 345,:provincia_id => 54, :comuna_nombre => "Putre"},
	{:comuna_id => 346,:provincia_id => 54, :comuna_nombre => "General Lagos"},
].each do |comuna|
	Comuna.find_or_create_by(comuna)
end
