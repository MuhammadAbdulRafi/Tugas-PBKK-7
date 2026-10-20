#set document(title: "TUGAS PBKK PORTOFOLIO", author: "Muhammad Abdul Rafi")

#let c-pink     = rgb("#fca5d3")
#let c-hotpink  = rgb("#ff4fa3")
#let c-cyan     = rgb("#7fe8f2")
#let c-lavender = rgb("#c9b6f7")
#let c-yellow   = rgb("#fff36e")
#let c-black    = rgb("#1a1a1a")
#let c-white    = rgb("#fffdf9")
#let c-cream    = rgb("#fff0f7")

#set text(font: "New Computer Modern", size: 10pt, fill: c-black)
#set page(
  paper: "a4",
  margin: (x: 1.6cm, y: 1.6cm),
  fill: c-cream,
  numbering: "1",
)

#let ribbon(txt, color: c-hotpink) = {
  rotate(-2deg, box(
    fill: color,
    stroke: 2pt + c-black,
    inset: (x: 14pt, y: 6pt),
    radius: 2pt,
    text(fill: c-white, weight: "black", size: 11pt, tracking: 1pt, upper(txt)),
  ))
}

#let big-title(txt) = {
  block(
    width: 100%,
    text(size: 34pt, weight: "black", fill: c-hotpink, upper(txt)),
  )
}

#let chip(txt, color: c-cyan) = box(
  fill: color,
  stroke: 1.2pt + c-black,
  inset: (x: 8pt, y: 4pt),
  radius: 12pt,
  text(size: 8.5pt, weight: "bold", txt),
)

#let section-card(title, color: c-pink, body) = {
  block(
    width: 100%,
    fill: c-white,
    stroke: 2pt + c-black,
    radius: 6pt,
    inset: 14pt,
    breakable: true, // izinkan pecah halaman rapi kalau memang panjang
    [
      #block(
        fill: color,
        stroke: 1.5pt + c-black,
        inset: (x: 10pt, y: 5pt),
        radius: 4pt,
        text(size: 13pt, weight: "black", fill: c-black, upper(title)),
      )
      #v(8pt)
      #body
    ],
  )
}

#let img-placeholder(w, h, label) = box(
  width: w, height: h,
  fill: c-lavender.lighten(60%),
  stroke: (paint: c-black, dash: "dashed", thickness: 1pt),
  align(center + horizon, text(size: 8pt, style: "italic", label)),
)

#big-title[Tugas PBKK Portofolio]
#v(6pt)
#ribbon("Muhammad Abdul Rafi — Informatics Engineering, ITS")
#v(18pt)

#grid(
  columns: (4cm, 1fr),
  gutter: 16pt,
  [
    #img-placeholder(3.6cm, 4.8cm, image("//insert img here//"))
  ],
  [
    #text(size: 20pt, weight: "black", fill: c-hotpink)[Muhammad Abdul Rafi]
    #v(2pt)
    #text(size: 10pt, style: "italic")[Biasa dipanggil "Rafi"]
    #v(6pt)
    #chip("Mahasiswa S1 Teknik Informatika") #h(4pt) #chip("ITS", color: c-yellow) #h(4pt) #chip("Surabaya", color: c-pink)
    #v(8pt)
    #par(justify: true)[
      Namaku Muhammad Abdul Rafi, biasa dipanggil Rafi, seorang mahasiswa S1
      Teknik Informatika di Institut Teknologi Sepuluh Nopember (ITS) yang antusias,
      adaptif, dan selalu termotivasi untuk mempelajari hal-hal baru. Aku aktif di
      dalam UKM Archery, karena aku percaya badan yang sehat
      merupakan keharusan yang sering terabaikan sebagai programmer.
      Dilengkapi keterampilan teknis, aku adalah pekerja keras yang
      selalu bersemangat berkontribusi pada kegiatan yang berdampak positif.
    ]
  ],
)

#v(20pt)

#section-card("Riwayat Pendidikan", color: c-cyan)[
  #table(
    columns: (auto, 1fr, auto, auto),
    stroke: 0.6pt + c-black.lighten(40%),
    inset: 6pt,
    align: (left, left, left, left),
    table.header(
      [*Jenjang*], [*Sekolah*], [*Kota*], [*Tahun*],
    ),
    [SD], [SD 10 Padang Lua], [Agam], [2016 -- 2017],
    [SMP], [SMP 1 Banuhampu], [Agam], [2017 -- 2019],
    [SMP], [SMP 11 Padang], [Padang], [2019 -- 2020],
    [SMA], [SMA 1 Sumatera Barat (MIPA)], [Padang Panjang], [Jul 2020 -- Mar 2023],
    [S1], [Institut Teknologi Sepuluh Nopember — Teknik Informatika], [Surabaya], [Jul 2023 -- sekarang],
  )
]

#v(12pt)

#section-card("Prestasi & Pelatihan", color: c-yellow)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    [
      *Member Global Competencies Workshop* (2024) \
      Peserta Workshop persiapan dan bimbingan untuk kuliah ke luar negeri.
    ],
    [
      *Member ClubDev IoT* (2024) \
      Belajar coding Python serta penggunaan Arduino dan sistem sensor
      dengan tujuan membekali mahasiswa dengan keterampilan merancang,
      membangun, dan mengelola jaringan perangkat pintar yang saling terhubung. 
    ],
    [
      *LKMM Pra-TD V FTEIC* (2024) \
      Pelatihan manajerial mahasiswa tingkat pra-dasar.
    ],
  )
]

#pagebreak()

#section-card("Opini: Pendidikan yang Kuinginkan", color: c-yellow)[
  #par(justify: true)[
    Pendidikan Indonesia hari ini masih terlalu berorientasi pada nilai ujian
    dan hafalan teori, sementara dunia industri butuh lulusan yang terbiasa
    memecahkan masalah nyata. Idealnya, kurikulum, terutama di bidang teknik
    memberi ruang lebih besar untuk proyek, magang, dan kolaborasi lintas
    disiplin sejak dini, sehingga mahasiswa tidak hanya lulus dengan IPK
    tinggi, tapi juga dengan portofolio dan pengalaman kerja yang relevan
    begitu masuk dunia kerja.
  ]
]

#v(20pt)
#align(center, ribbon("Terima kasih sudah membaca! — Rafi", color: c-lavender))
