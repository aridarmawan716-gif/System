// Bagian Data (Representasi isi XML <electrical>)
.section .rodata
xml_tag:
    .ascii "electrical\0"

// Bagian Kode Program
.section .text
.global _start

_start:
    // Logika pengisian status sistem ke register
    mov x0, #1          // x0 diisi status 1 (Sistem Aktif)

    // Logika Exit aman khusus untuk Termux ARM64
    mov x8, #93         // Syscall nomor 93 di ARM64 adalah exit
    mov x0, #0          // Status keluar: 0 (Success)
    svc #0              // Panggil Supervisor Call (menggantikan swi)

