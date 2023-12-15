-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 03:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `host`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(6, '', 'rtx_banner 1.png', '', 'on'),
(7, '', 'image 1.png', '', 'on'),
(8, '', 'image 2.png', '', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(16, 5, 'INTEL Core i9 10980XE ', '<p>CPU Socket Type LGA 2066</p><p>Core Name Cascade Lake</p><p># of Cores 18-Core</p><p># of Threads 36</p><p>Operating Frequency 3.0 GHz</p><p>Max Turbo Frequency Intel Turbo Boost 2.0 Max Technology Frequency (GHz): 4.6 Intel Turbo Boost 3.0 Max Technology Frequency (GHz): 4.8</p><p>L3 Cache 24.75MB</p><p>Manufacturing Tech 14nm</p><p>64-Bit Support Yes</p><p>Hyper-Threading Support Yes</p><p>Memory Types DDR4 2933</p><p>Memory Channel 4</p><p>PCI Express Revision 3.0</p><p>Max Number of PCI Express Lanes 48</p><p>Thermal Design Power 165W</p><p>Cooling Device Cooling device not included - Processor Only</p>', 'cpu1.jpg', 19500000, 1, 'on'),
(17, 5, 'AMD Ryzen 5 3600 ', '<p># of CPU Cores 6</p><p># of Threads 12</p><p>Base Clock&nbsp;3.6GHz</p><p>Max Boost Clock&nbsp;Up to 4.2GHz</p><p>TDP 65W</p><p>Total L1 Cache 384KB</p><p>Total L2 Cache 3MB</p><p>Total L3 Cache 32MB</p><p>Unlocked&nbsp;Yes</p><p>System Memory Specification 3200MHz</p><p>System Memory Type DDR4</p><p>Memory Channels 2</p>', 'cpu2.jpg', 3600000, 1, 'on'),
(18, 6, 'ASUS STRIX RTX 2080 TI OC 11GB DDR6', '<p><strong>GPU</strong><br />RTX 2080 Ti (TU102)<br /><strong>Stream Processor</strong><br />3584<br /><strong>Video Memory</strong><br />11GB GDDR6<br /><strong>Memory Bus</strong><br />352-bit&nbsp;<br /><strong>Engine Clock</strong><br />1350MHz&nbsp;<br /><strong>Engine Clock Boost</strong><br />Gaming Mode: 1650MHz<br />OC Mode: 1665MHz<br /><strong>Memory Clock</strong><br />1750MHz &ndash; 14000MHz Effective<br /><strong>PCI Express</strong><br />3.0<br /><strong>Display Outputs</strong><br />3x DisplayPort 1.4<br />1x HDMI 2.0b<br />1x USB 3.1 Type-C<br /><strong>Recommended Power Supply</strong><br />650W<br /><strong>DirectX</strong><br />12 API feature level 12_1<br /><strong>OpenGL</strong><br />4.6<br /><strong>Cooling</strong><br />Triple-fan solution<br /><strong>Slot Size</strong><br />2.5<br /><strong>Supported OS</strong><br />Windows 10&nbsp;<br /><strong>Card Length</strong><br />30 x 130 x 54 mm</p>', 'GPU2.jpg', 26700000, 1, 'on'),
(19, 6, 'ASUS STRIX GTX 1650 Super', '<p><strong>Chipset</strong></p><p>Chipset ManufacturerNVIDIA</p><p>GPUGeForce GTX 1650 Super</p><p>Memory Clock 8 Gbps</p><p>Boost Clock (Gaming Mode)<br />1740 MHz</p><p><br /><strong>Memory</strong></p><p>CUDA Core 1280</p><p>Memory Size 4 GB</p><p>Memory Interface128 bits</p><p>Memory Type GDDR6</p><p><br /><strong>Interface</strong></p><p>HDMIYes x 1</p><p>DisplayPortYes x 1</p><p>DVI-DYes x 1</p><p>Maximum Display 3</p>', 'GPU1.jpg', 2850000, 1, 'on'),
(20, 5, 'AMD Ryzen 9 3950X ', '<p># of CPU Cores<br />16<br /># of Threads<br />32<br />Base Clock<br />3.5GHz<br />Max Boost Clock<br />Up to 4.7GHz<br />Total L1 Cache<br />1MB<br />Total L2 Cache<br />8MB<br />Total L3 Cache<br />64MB<br />Unlocked<br />Yes<br />CMOS<br />TSMC 7nm FinFET<br />Package<br />AM4<br />PCI Express&reg; Version<br />PCIe 4.0 x16<br />Thermal Solution (PIB)<br />Cooler Not Included, Liquid Cooling Recommended<br />Default TDP / TDP<br />105W<br />System Memory<br />System Memory Specification<br />3200MHz<br />System Memory Type<br />DDR4<br />Memory Channels<br />2</p>', 'cpu3.jpg', 12900000, 1, 'on'),
(21, 6, 'ASUS GTX 1650 Dual', '<p>Product Name : Asus GeForce GTX 1650 4GB DDR5 - Dual OC<br />Brand : Asus<br />Interface : PCI Express 3.0<br />GPU : NVIDIA GeForce GTX 1650<br />Base Clock : 1515 MHz<br />Boost Clock : 1755 MHz<br />Memory Clock Speed : 8002 MHz<br />Memory Size : 4GB<br />Memory Interface : 128 bit<br />Memory Type : DDR5<br />DirectX : DirectX 12<br />OpenGL : OpenGL 4.5<br />Cuda Cores : 896<br />Multi Display : 3 Displays<br />Video Output Function : DisplayPort 1.4, HDMI 2.0b, DL-DVI-D, HDCP Support<br />Minimum Power Requipment : 300 Watt *Pure Power or greater PSU<br />Power Connectors : -<br />Card Dimensions : 20.4 x 11.5 x 3.7 Centimeter</p>', 'GPU3.jpg', 2500000, 1, 'on'),
(22, 8, 'MSI B350M GAMING PRO - AM4', '<p><strong>CPU</strong></p><p>CPU Socket Type<br />AM 4<br />CPU Type<br />AMD Socket AM4 A-Series APUs (Bristol Ridge) and Ryzen Series CPUs (Summit Ridge)<br />Supported CPU Technologies -</p><p><strong>Chipsets</strong></p><p>Chipset<br />AMD B350</p><p><strong>Memory</strong></p><p>Number of Memory Slots 2<br />Memory Type DDR4<br />Memory Standart 1866/ 2133/ 2400/ 2667(OC)/ 2933(OC)/ 3200(OC)+&nbsp;MHz<br />Max Memory Supported 32GB<br />Channel Supported Dual Channel<br />Registered/Unbuffered Unbuffered<br />Error Checking No</p><p>Multi GPU Support</p><p>SLI Ready -<br />Crossfire Ready -</p><p><strong>Expansion Slots</strong></p><p>PCI Express x16<br />1 x PCIe 3.0 x16<br />PCI Express x4 -<br />PCI Express x1<br />2 x PCIe 2.0 x1<br />&nbsp;</p><p><strong>Storage Devices</strong></p><p>SATA 6Gb/s<br />4 x SATA3 6.0 Gb/s<br />SATA Express<br />-<br />M.2<br />1 x M.2 slots (Key M)<br />- Supports PCIe 3.0 x4 (RYZEN series processors) or PCIe 3.0 x2 (7th Gen A-series/ Athlon&trade; processors) and SATA 6Gb/s 2242/ 2260 /2280 storage devices<br />U.2 -</p><p><strong>Onboard Audio</strong></p><p>Audio Chipset<br />Realtek&reg; ALC887<br />Audio Channel<br />7.1-Channel High Definition Audio</p><p><strong>LAN</strong></p><p>LAN Chipset<br />1 x Realtek&reg; RTL8111H<br />Second LAN Chipset -<br />Max LAN Speed 10/100/1000Mbps<br />Wireless LAN -<br />Bluetooth -</p><p><strong>Rear Panel Ports</strong></p><p>PS/2<br />1 x PS/2 keyboard/ mouse combo port<br />D-Sub 1 x D-Sub Port<br />DVI 1 x DVI-D<br />HDMI 1 x HDMI<br />DisplayPort -<br />RJ45 1 x LAN (RJ45) port(s)<br />USB 3.1 4 x USB 3.1 Gen1 Type-A<br />USB 3.0 -<br />USB 2.0 2 x USB 2.0 Type-A ports<br />S/PDIF Out -<br />Audio Ports 3 x Audio jack(s)<br />Antenna Connectors -</p><p><strong>Internal I/O Connectors</strong></p><p>USB Connectors<br />2 x USB 2.0 connectors (supports additional 4 USB 2.0 ports)<br />1 x USB 3.1 Gen1 connector (supports additional 2 USB 3.1 Gen1 ports)<br />Power Connectors 1 x 24-pin ATX main power connector<br />1 x 8-pin ATX 12V power connector<br />Other Connectors 1 x 4-pin CPU fan connector<br />2 x 4-pin system fan connectors<br />1 x Front panel audio connector<br />2 x Front panel connectors<br />1 x TPM module connector<br />1 x Chassis Intrusion connector<br />1 x Serial port connector<br />1 x Parallel port connector<br />1 x Extended LED strip connector<br />1 x Clear CMOS jumper</p><p><strong>Physical Spec</strong></p><p>Form Factor<br />mATX Form Factor<br />Dimension 24.4 cm x 21.0 cm<br />&nbsp;<br /><strong>Others Information</strong></p><p>Mounting Holes 6<br />Color Themes<br />Black-Red<br />LED Red</p>', 'mb.png', 1400000, 1, 'on'),
(23, 8, 'ASUS ROG STRIX B450-F GAMING AM4', '<p>CPU<br />AMD AM4 Socket AMD Ryzen&trade; 2nd Generation/Ryzen&trade; with Radeon&trade; Vega Graphics/Ryzen&trade; 1st Generation Processors<br /><br />Chipset<br />AMD B450<br /><br />Memori<br />AMD Ryzen&trade; Processors<br />4 x DIMM, Max. 64GB, DDR4 3200(O.C.)/3000(O.C.)/2800(O.C.)/2666/2400/2133 MHz Non-ECC, Un-buffered Memory<br />Dual Channel Memory Architecture<br /><br />Grafis<br />Integrated in the AMD Ryzen&trade; with Radeon&trade; Vega Graphics Processors<br />Dukungan output Multi-VGA : HDMI/DisplayPort port<br />- Supports HDMI 2.0b with maximum resolution of 4096 x 2160 @ 60 Hz<br />- Supports DisplayPort 1.2 with max. resolution 4096 x 2160 @ 60 Hz<br /><br />Dukungan Multi-GPU<br />AMD Ryzen&trade; 2nd Generation/Ryzen&trade; 1st Generation Processors<br />Supports AMD 3-Way CrossFireX&trade; Technology<br /><br />Slot Ekspansi<br />AMD Ryzen&trade; 2nd Generation/ Ryzen&trade; 1st Generation Processors<br />2 x PCIe 3.0/2.0 x16 (x16 or x8/x4)<br />AMD Ryzen&trade; with Radeon&trade; Vega Graphics Processor<br />1 x PCIe 3.0/2.0 x16 (x8 mode)<br />AMD B450 chipset<br />1 x PCIe 2.0 x16 (max at x4 mode) *1<br />3 x PCIe 2.0 x1<br /><br />Storage<br />AMD Ryzen&trade; 2nd Generation/ Ryzen&trade; 1st Generation Processors : *2<br />1 x M.2 Socket 3, , with M key, type 2242/2260/2280 storage devices support (SATA &amp; PCIE 3.0 x 4 mode)*3<br />1 x M.2 Socket 3, , with M key, type 2242/2260/2280/22110 storage devices support (PCIE 3.0 x 4 mode)*4<br />2 x SATA 6Gb/s port(s)<br /><br />LAN<br />Intel&reg; I211-AT, 1 x Gigabit LAN Controller(s)<br />Anti-surge LANGuard<br />ROG GameFirst Technology<br /><br />Audio<br />ROG SupremeFX 8-Channel High Definition Audio CODEC S1220A<br /><br />Form Factor<br />ATX Form Factor<br />12 inch x 9.6 inch ( 30.5 cm x 24.4 cm )</p>', 'mb2.jpg', 2349000, 1, 'on'),
(24, 9, 'CUBE GAMING Marvik', '<p>Product Name : CUBE GAMING MARVIK<br />Model : MARVIK<br />Case Material : Steel, Tempered Glass, ABS<br />Compability : ATX, M-ATX, ITX<br />Case Dimensions : 405 x 190 x 433 mm<br />Maximum GPU Length : 320 mm<br />Maximum PSU Length : -<br />Maximum Cooler Height : 160 mm<br />Case Expansion : 7<br />Case Drive Bays : 2x 3.5, 2x 2.5 Inch</p>', 'case_2.jpg', 370000, 1, 'on'),
(25, 9, 'Cooler Master MC500', '<p>Materials Steel, Plastic, tempered glass<br />Dimensions (LxWxH) 512 x 235 x 548mm<br />Motherboard Support E-ATX (up to 12&quot; x 10.7&quot;), ATX, Micro-ATX, Mini-ITX<br />Expansion Slots 7<br />Drive Bays 5.25&quot; 2<br />Combo 2.5&quot;/3.5&quot; 2<br />SSD 2<br />Drive Bays support 5.25&quot; 2<br />Combo 2.5&quot;/3.5&quot; 8 or 10 (with ODD bay removed)<br />SSD 4<br />I/O Port USB 3.0 x 2, USB 2.0 x 2, Audio in / out (supports HD Audio)<br />Pre-installed Fans Front 140mm x 1 (1200RPM)<br />Rear 140mm x 1 (1200RPM)<br />Fan Support Front 120 / 140mm x 3<br />Rear 120 / 140mm x 1<br />Top 120mm x 2<br />Radiator Support Front 120 / 140 / 240 / 280 / 360mm<br />Rear 120 / 140mm<br />Top 120 / 240mm<br />Clearances VGA 412mm (without 3.5&quot; HDD cage)<br />296mm (with 3.5&quot; HDD cage)<br />CPU 190mm<br />Cable Routing Behind MB Tray 25mm - 35mm<br />Dust Filters Top, Front, Bottom<br />Power Supply Support Bottom Mount, ATX</p>', 'case1.jpeg', 1555000, 1, 'on'),
(26, 7, 'Team Elite T-Force Delta RGB 8GB (2X4GB) DDR4 2666MHZ', '<p>CPU Compatibility: Intel &amp; AMD, all DDR4 platforms<br />Chipset: Intel &amp; AMD DDR4 chipsets<br />Capacity: 8GB (4GBx2)<br />Dual Channel kit: Yes<br />Tested Speed: DDR4-2666 MHz (PC4-21300)<br />Tested Latency: 15-17-17-35<br />Tested Voltage: 1.2-1.35V<br />Registered/Unbuffered: Unbuffered<br />Error Checking: Non-ECC<br />Type: 288-pin UDIMM<br />SPD Voltage: 1.2V</p>', 'ram1.jpg', 1450000, 1, 'on'),
(27, 7, 'GSKILL TRIDENT Z RGB LED 32GB KIT (16x2) 3600MHZ DDR4', '<p>Memory Type<br />DDR4<br />Capacity<br />16GB (8GBx2)<br />Multi-Channel Kit<br />Dual Channel Kit<br />Tested Speed<br />3600MHz<br />Tested Latency<br />19-20-20-40<br />Tested Voltage<br />1.35V<br />Registered/Unbuffered<br />Unbuffered<br />Error Checking<br />Non-ECC<br />SPD Speed<br />2133MHz<br />SPD Voltage<br />1.20V<br />Fan Included<br />No<br />Features<br />Intel XMP 2.0 (Extreme Memory Profile) Ready<br />Additional Notes<br />Rated XMP frequency &amp; stability depends on MB &amp; CPU capability.</p>', 'ram3.jpg', 3175000, 1, 'on'),
(28, 9, '', '', 'ram2.jpg', 0, 0, 'off'),
(29, 10, 'Power Supply Corsair CV550 550W ATX Power Supply 80 Plus Bronze PSU', '<p>Corsair Powersupply CV550 [CP-9020210-EU] 550W 80+ BRONZE<br />Part Number CV550 (CP-9020210-EU)<br />Power 550W<br />Efficiency 80 PLUS BRONZE<br />Fan 120 mm<br />Garansi Resmi DTG 3 year<br /><br />ATX Connector 1<br />Adjustable Single/Multi 12V Rail No<br />ATX12V Version v2.31<br />Continuous output rated temperature C 30&deg;C<br />Continuous power W 450 Watts<br />Fan bearing technology Sleeve<br />Fan size mm 120mm<br />MTBF hours 100,000 hours<br />Multi-GPU ready No<br />Warranty Three years<br />80 PLUS Efficiency Bronze<br />PSU Form Factor ATX<br />Zero RPM Mode No<br />iCUE Compatibility No<br /><br />Cable Type Sleeved<br />Dimensions 150mm x 125mm x 86mm<br />EPS12V Connector 1<br />EPS12V Version v2.92<br />Floppy Connector 1<br />Intel C6C7 sleep state compatible No<br />Modular No<br />PCIe Connector 2<br />SATA Connector 7<br />Modern Standby Compatible No</p>', 'image 1.png', 839000, 1, 'on'),
(30, 10, 'CORSAIR VS450 80 PLUS 450WATT', '<p>ATX Connector 1<br />Ability to toggle singlemultiple 12V rails No<br />ATX12V Version v2.31<br />Continuous output rated temperature C 30&deg;C<br />Continuous power W 450 Watts<br />Fan bearing technology Sleeve<br />Fan size mm 120mm<br />MTBF hours 100,000 hours<br />Multi-GPU ready No<br />Warranty Three years<br />80 PLUS Efficiency White<br />PSU Form Factor ATX<br />Zero RPM Mode No<br /><br />Cable Type Sleeved<br />Dimensions 150mm x 86mm x 125mm<br />EPS Connector 1<br />Floppy Connector 1<br />Modular No<br />PCI-E Connector 2<br />SATA Connector 7</p>', 'image 2.png', 500000, 1, 'on'),
(31, 12, 'Samsung S24R350', '<p>Display<br />Screen Size (Inch)<br />24&quot;<br />Screen Size (cm)<br />60.4<br />Screen Size (Class)<br />24<br />Flat / Curved<br />Flat<br />Active Display Size (HxV) (mm)<br />527.04 x 296.46mm<br />Aspect Ratio<br />16:9<br />Panel Type<br />IPS<br />Brightness (Typical)<br />250cd/m2<br />Brightness (Min)<br />200cd/m2<br />Contrast Ratio Static<br />1000:1(Typical)<br />Dynamic Contrast Ratio<br />Mega<br />Resolution<br />1920X1080<br />Response Time<br />5ms (GTG)<br />Viewing Angle (H/V)<br />178&deg;/178&deg;<br />Color Support<br />16.7M<br />Color Gamut (NTSC 1976)<br />72%<br />Refresh Rate<br />75Hz</p>', 'tv1.png', 1540000, 1, 'on'),
(32, 12, 'Asus VG278QR', '<p>Display<br />Panel Size: Wide Screen 27.0&quot;(68.6cm) 16:9<br />Color Saturation : 72%(NTSC)<br />Panel Type : TN<br />True Resolution : 1920x1080<br />Display Viewing Area(HxV) : 597.6 x 336.15 mm<br />Display Surface Non-glare<br />Pixel Pitch : 0.311 mm<br />Brightness(Max) : 400 cd/?<br />Contrast Ratio (Max) : 1000:1<br />ASUS Smart Contrast Ratio (ASCR) : 100000000:1<br />Viewing Angle (CR?10) : 170&deg;(H)/160&deg;(V)<br />Response Time : 0.5ms (GTG, Min.), 1ms (GTG, Ave.)<br />Display Colors : 16.7M<br />Flicker free<br />Refresh Rate(max) : 165Hz<br /><br />Video Feature<br />Trace Free Technology : Yes<br />Skin-Tone Selection : 3 Modes<br />Color Temperature Selection : 4 Modes<br />GamePlus(modes) : Yes (Crosshair/Timer/FPS Counter/Display Alignment)<br />Low Blue Light : Yes<br />HDCP support : Yes<br />VividPixel : Yes<br />Smart View Technology : Yes<br />GameVisual :7 Modes(Scenery/Racing/Cinema/RTS/RPG/FPS/sRGB Modes/MOBA Mode)<br />FreeSync technology supported<br />Extreme Low Motion Blur<br />GameFast Input technology<br /><br />Audio Features<br />Stereo Speakers : 2W x 2 Stereo RMS<br /><br />I/O Ports Signal Input : HDMI(v1.4), DisplayPort 1.2, Dual-link DVI-D PC Audio Input : Earphone out Earphone jack : 3.5mm Mini-Jack Signal Frequency Digital<br /><br />Signal Frequency :<br />DisplayPort?195 ~195 KHz (H) /40 ~165 Hz(V)<br />HDMI : 30 ~140 KHz (H) /40 ~120 Hz(V)<br />DVI: 30 ~160 KHz (H) /50 ~144 Hz(V)</p>', 'tv2.png', 4500000, 1, 'on'),
(33, 11, 'SAMSUNG Solid State Drive 970 EVO 250GB M.2 NVMe', '<p>Product Type : SSD<br />Series : 970 EVO Plus<br />Usage Application : Client PCs<br />Interface : PCIe Gen 3.0 x 4, NVMe 1.3<br />Consumer : Yes<br />Storage Capacity :<br />250GB (1GB=1 Billion byte by IDEMA) * Actual usable capacity may be less (due to formatting, partitioning, operating system, applications or otherwise)<br />Key Features :<br />Sequential Read Speed<br />Up to 3,500 MB/s * Performance may vary based on system hardware &amp; configuration<br />Sequential Write Speed<br />Up to 2,300 MB/s * Performance may vary based on system hardware &amp; configuration<br />Random Read Speed<br />Random Read (4KB, QD32): Up to 250,000 IOPS; Random Read (4KB, QD1): Up to 17,000 IOPS * Performance may vary based on system hardware &amp; configuration<br />Random Write Speed<br />Random Write (4KB, QD32): Up to 550,000 IOPS; Random Write (4KB, QD1): Up to 60,000 IOPS * Performance may vary based on system hardware &amp; configuration<br />Controller : Samsung Phoenix Controller<br />NAND Flash : Samsung V-NAND 3-bit MLC<br />Cache Memory : Samsung 512MB Low Power DDR4 SDRAM<br />Trim Support : Supported<br />AES Encryption : AES 256-bit Encryption (Class 0)TCG/Opal IEEE1667 (Encrypted drive)<br />S.M.A.R.T. Support :Supported<br />GC (Garbage Collection) : Auto Garbage Collection Algorithm<br />WWN Support : Not Supported<br />Device Sleep Mode Support : Yes<br />Temperature proof : Yes<br />NVMe : Yes<br />Gaming SSDs : Yes<br />General:<br />Average Power Consumption (system level) :<br />* Average: 5 W * Maximum: 8 W (Burst mode) * Actual power consumption may vary depending on system hardware &amp; configuration<br />Power consumption (Idle) :<br />Max. 30 mW * Actual power consumption may vary depending on system hardware &amp; configuration<br />Voltage : 3.3 V 5 % Allowable voltage<br />Reliability (MTBF) : 1.5 Million Hours Reliability (MTBF)<br />Environmental Specs:<br />Operating Temperature : 0 - 70 Operating Temperature<br />Shock : 1,500 G &amp; 0.5 ms (Half sine)<br />Form Factor :<br />Product : M.2 (2280)<br />Dimensions (W x H x D) : 80.15 x 22.15 x 2.38 (mm)<br />Weight :Max 8.0 g Weight</p>', 'ssd.png', 1850000, 1, 'on'),
(34, 11, 'SAMSUNG Solid State Drive 980 EVO 1TB M.2 NVMe', '<p>Client PCs<br />-Interface<br />PCIe Gen 3.0 x4, NVMe 1.3<br />-Controller<br />Samsung Phoenix Controller<br />-NAND Flash<br />Samsung V-NAND 2-bit MLC<br />-GC (Garbage Collection)<br />Auto Garbage Collection Algorithm<br />=Device Sleep Mode Support<br />Yes<br />-Internal Storage<br />Yes<br />-Temperature proof<br />Yes<br />-NVMe<br />Yes<br />-Gaming SSDs<br />Yes<br /><br />Sequential Read Speed<br />Up to 3,500 MB/s * Performance may vary based on system hardware &amp; configuration<br /><br />Sequential Write Speed<br />Up to 2,700 MB/s * Performance may vary based on system hardware &amp; configuration</p>', 'ssd2.png', 5200000, -1, 'on'),
(35, 13, 'Logitech G PRO Wireless Gaming Mouse', '<p>Product Name : Logitech G Pro Wireless Gaming Mouse<br />Brand : Logitech<br />Model : G Pro<br />Color : Black<br />Type : Wireless<br />DPI : 100 &ndash; 16,000 DPI<br />Warranty : 2 Years<br />Features :<br />- Designed with Pros, Engineered to Win (PRO Wireless was designed to be the ultimate gaming mouse for esports professionals)<br />- Our Most Accurate Gaming Sensor (For PRO Wireless, HERO 16K has been optimized to track insane flicks at speeds over 400 IPS without spinning out)<br />- LIGHTSPEED Wireless ( 1 ms report rate connection&mdash;without a wire)<br />- Ultra Lightweight ( an unreal 80-gram)<br />- 4-8 Programmable Buttons<br />- LIGHTSYNC RGB<br />- Onboard Memory (you can use G HUB to save your preferences directly to the mouse for fast and easy use on tournament systems)<br />- Mechanical Button Tensioning System<br />- Enduring Performance</p>', 'mouse1.png', 2190000, -1, 'on'),
(36, 13, 'Rexus Gaming Mouse DAXA Air 2', '<p>Tipe Sensor: Pixart PMW3389</p><p>Polling Rate: 125-500-1000Hz</p><p>Tombol: Omron 20M (OF)</p><p>Kabel: Paracord Type-C 1,8 meter</p><p>Level DPI: 400-16000DPI</p><p>Kecepatan: 400 inch per second (IPS)</p><p>Akselerasi: 40G</p><p>Dimensi: 122 x 66 x 42mm</p><p>Berat: 58-82 gram</p>', 'mouse 2.png', 539000, 1, 'on'),
(37, 14, 'Steelseries Apex Pro TKL Gaming Keyboard', '<p>&nbsp;</p><p>APEX PRO TKL</p><p>The Next Step in Mechanical Keyboards First-of-its kind adjustable mechanical switches for customizable per-key sensitivity 8x faster response, 5x faster actuation, and 2x durability OLED Smart Display delivers information straight from games and apps Series 5000 Aircraft grade aluminum frame Detachable soft touch magnetic wrist rest</p><p>Type &amp; Name</p><p>OmniPoint Adjustable Mechanical Switch (Analog Hall Effect Magnetic Sensor)</p><p>Actuation Point : 0.4mm to 3.6mm</p><p>Force : 45cN</p><p>Response Time : 0.7ms (More info)</p><p>Lifetime : 100 Million Keypresses</p><p>Top Material : Aircraft Grade Aluminum Alloy Frame N-Key Roll Over : 86 Key Anti-Ghosting : 100% Illumination : Dynamic Per Key RGB Illumination</p>', 'keyboard1.png', 2774000, 1, 'on'),
(38, 14, 'Rexus Legionare MX9 RGB TKL Mechanical Gaming Keyboard', '<p>Tipe: Keyboard Mekanikal (Dengan switch Biru dan Merah)</p><p>Jumlah tombol: 87 tombol Daya tahan tombol: 50 juta klik Material: Plastik ABS</p><p>Gaya tekanan tombol: 60 &plusmn; 10G</p><p>Polling rate: 1000 Hz</p><p>Arus: 100 &ndash; 260 mA</p><p>Memori: 64 kb</p><p>Tegangan: 5.0 &plusmn; 0.25 V</p><p>Panjang kabel: 1,8 Meter</p><p>Dimensi: 361 x 22.5 x 133.5 mm</p><p>Berat: 950 &plusmn; 30 Gram</p><p>Kompatibilitas: Windows 7 / 8 / 8.1 / 10</p>', 'keyboard 2.png', 399000, 1, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(5, 'CPU', 'on'),
(6, 'GPU', 'on'),
(7, 'RAM', 'on'),
(8, 'MOTHERBOARD', 'on'),
(9, 'CASE', 'on'),
(10, 'POWER SUPPLY', 'on'),
(11, 'STORAGE', 'on'),
(12, 'MONITOR', 'on'),
(13, 'MOUSE', 'on'),
(14, 'KEYBOARD', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`) VALUES
(4, 5, '112333222', 'joyo', '2010-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta', 6000, 'on'),
(2, 'Bandung', 8000, 'on'),
(3, 'Surabaya', 11000, 'on'),
(4, 'Semarang', 9000, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(5, 1, 7, 'joyo', '0212345678', 'jalan mangga jakarta', '2020-12-23 14:56:26', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(5, 34, 1, 5200000),
(5, 35, 1, 2190000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(2, 'superadmin', 'admin', 'admin@weshop.com', 'jl weshop', '08889999', '1b3231655cebb7a1f783eddf27d254ca', 'on'),
(6, 'customer', 'customer', 'customer1@aaa.com', 'jl.Customer Weshop', '088888', '5f4dcc3b5aa765d61d8327deb882cf99', 'on'),
(7, 'customer', 'joyo', 'joyo@gmail.com', 'jalan mangga jakarta selatan', '02112345678', 'a8e9c11d29e42b83078818fe2e82720b', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
