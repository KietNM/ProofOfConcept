USE [AdventureWorks2012]
GO
/****** Object:  Table [Poc].[AccountBalance]    Script Date: 2017-12-26 11:14:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Poc].[AccountBalance](
	[AccountNumber] [bigint] NOT NULL,
	[Balance] [decimal](18, 3) NOT NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [Poc].[BankAccount]    Script Date: 2017-12-26 11:14:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Poc].[BankAccount](
	[AccountNumber] [bigint] NOT NULL,
	[AccountName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Poc].[Currency]    Script Date: 2017-12-26 11:14:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Poc].[Currency](
	[CurrencyCode] [varchar](3) NOT NULL,
	[CurrencyName] [nvarchar](64) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [Poc].[Transaction]    Script Date: 2017-12-26 11:14:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Poc].[Transaction](
	[AccountNumber] [bigint] NOT NULL,
	[Amount] [decimal](18, 3) NOT NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[Type] [char](1) NOT NULL,
	[TransactionDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
INSERT [Poc].[AccountBalance] ([AccountNumber], [Balance], [CurrencyCode], [ModifiedDate]) VALUES (11111111, CAST(20.000 AS Decimal(18, 3)), N'USD', CAST(N'2017-12-26 23:12:27.017' AS DateTime))
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (11111111, N'Account01')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (22222222, N'Account02')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (33333333, N'Account03')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (44444444, N'Account04')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (55555555, N'Account05')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (66666666, N'Account06')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (77777777, N'Account07')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (88888888, N'Account08')
INSERT [Poc].[BankAccount] ([AccountNumber], [AccountName]) VALUES (99999999, N'Account09')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'INR', N'Indian rupee')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'IDR', N'Indonesian rupiah')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XDR', N'SDR (Special Drawing Right)')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'IRR', N'Iranian rial')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'IQD', N'Iraqi dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'IMP', N'Manx pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ILS', N'Israeli new shekel')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'JMD', N'Jamaican dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'JPY', N'Japanese yen')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'JEP', N'Jersey pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'JOD', N'Jordanian dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KZT', N'Kazakhstani tenge')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KES', N'Kenyan shilling')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AUD', N'Australian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KWD', N'Kuwaiti dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KGS', N'Kyrgyzstani som')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'LAK', N'Lao kip')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'LBP', N'Lebanese pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'LSL', N'Lesotho loti')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'LRD', N'Liberian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'LYD', N'Libyan dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CHF', N'Swiss franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MOP', N'Macanese pataca')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MKD', N'Macedonian denar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MGA', N'Malagasy ariary')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MWK', N'Malawian kwacha')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MYR', N'Malaysian ringgit')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MVR', N'Maldivian rufiyaa')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MRO', N'Mauritanian ouguiya')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MUR', N'Mauritian rupee')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MXN', N'Mexican peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MDL', N'Moldovan leu')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MNT', N'Mongolian tugrik')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MAD', N'Moroccan dirham')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MZN', N'Mozambican metical')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'MMK', N'Myanmar kyat')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NAD', N'Namibian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AUD', N'Australian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NPR', N'Nepalese rupee')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XPF', N'CFP franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NZD', N'New Zealand dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NIO', N'Nicaraguan cordoba')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NGN', N'Nigerian naira')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NZD', N'New Zealand dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AUD', N'Australian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KPW', N'North Korean won')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NOK', N'Norwegian krone')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'OMR', N'Omani rial')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'PKR', N'Pakistani rupee')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ILS', N'Israeli new shekel')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'PGK', N'Papua New Guinean kina')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'PYG', N'Paraguayan guarani')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'PEN', N'Peruvian sol')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'PHP', N'Philippine peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NZD', N'New Zealand dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'PLN', N'Polish zloty')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'QAR', N'Qatari riyal')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'RON', N'Romanian leu')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'RUB', N'Russian ruble')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'RWF', N'Rwandan franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SHP', N'Saint Helena pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'WST', N'Samoan tala')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'STD', N'Sao Tome and Principe dobra')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SAR', N'Saudi Arabian riyal')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'RSD', N'Serbian dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SCR', N'Seychellois rupee')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SLL', N'Sierra Leonean leone')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SGD', N'Singapore dollar')
GO
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ANG', N'Netherlands Antillean guilder')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SBD', N'Solomon Islands dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SOS', N'Somali shilling')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ZAR', N'South African rand')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GBP', N'Pound sterling')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KRW', N'South Korean won')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SSP', N'South Sudanese pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'LKR', N'Sri Lankan rupee')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SDG', N'Sudanese pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SRD', N'Surinamese dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NOK', N'Norwegian krone')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SZL', N'Swazi lilangeni')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SEK', N'Swedish krona')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CHF', N'Swiss franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SYP', N'Syrian pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TWD', N'New Taiwan dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TJS', N'Tajikistani somoni')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TZS', N'Tanzanian shilling')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'THB', N'Thai baht')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NZD', N'New Zealand dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TOP', N'Tongan pa’anga')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TTD', N'Trinidad and Tobago dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GBP', N'Pound sterling')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TND', N'Tunisian dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TRY', N'Turkish lira')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'TMT', N'Turkmen manat')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AUD', N'Australian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'UGX', N'Ugandan shilling')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'UAH', N'Ukrainian hryvnia')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AED', N'UAE dirham')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GBP', N'Pound sterling')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'UYU', N'Uruguayan peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'UZS', N'Uzbekistani som')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'VUV', N'Vanuatu vatu')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'VEF', N'Venezuelan bolivar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'VND', N'Vietnamese dong')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XPF', N'CFP franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'YER', N'Yemeni rial')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ZMW', N'Zambian kwacha')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AFN', N'Afghan afghani')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ALL', N'Albanian lek')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'DZD', N'Algerian dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AOA', N'Angolan kwanza')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ARS', N'Argentine peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AMD', N'Armenian dram')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AWG', N'Aruban florin')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'SHP', N'Saint Helena pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AUD', N'Australian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AZN', N'Azerbaijan manat')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BSD', N'Bahamian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BHD', N'Bahraini dinar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BDT', N'Bangladeshi taka')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BBD', N'Barbadian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BYN', N'Belarusian ruble')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BZD', N'Belize dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BMD', N'Bermudian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BTN', N'Bhutanese ngultrum')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BOB', N'Bolivian boliviano')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BAM', N'Bosnia and Herzegovina convertible mark')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BWP', N'Botswana pula')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BRL', N'Brazilian real')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BND', N'Brunei dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BGN', N'Bulgarian lev')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'BIF', N'Burundi franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CVE', N'Cape Verdean escudo')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KHR', N'Cambodian riel')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XAF', N'Central African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CAD', N'Canadian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KYD', N'Cayman Islands dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XAF', N'Central African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XAF', N'Central African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'NZD', N'New Zealand dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CLP', N'Chilean peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CNY', N'Chinese Yuan Renminbi')
GO
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AUD', N'Australian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'AUD', N'Australian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'COP', N'Colombian peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'KMF', N'Comorian franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CDF', N'Congolese franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XAF', N'Central African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CRC', N'Costa Rican colon')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'HRK', N'Croatian kuna')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CUP', N'Cuban peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ANG', N'Netherlands Antillean guilder')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'CZK', N'Czech koruna')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'DKK', N'Danish krone')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'DJF', N'Djiboutian franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'DOP', N'Dominican peso')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EGP', N'Egyptian pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XAF', N'Central African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ERN', N'Eritrean nakfa')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ETB', N'Ethiopian birr')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'FKP', N'Falkland Islands pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'FJD', N'Fijian dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XPF', N'CFP franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XAF', N'Central African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GMD', N'Gambian dalasi')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GEL', N'Georgian lari')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GHS', N'Ghanaian cedi')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GIP', N'Gibraltar pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'DKK', N'Danish krone')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XCD', N'East Caribbean dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'EUR', N'European euro')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'USD', N'United States dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GTQ', N'Guatemalan quetzal')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GGP', N'Guernsey Pound')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GNF', N'Guinean franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'XOF', N'West African CFA franc')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'GYD', N'Guyanese dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'HTG', N'Haitian gourde')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'HNL', N'Honduran lempira')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'HKD', N'Hong Kong dollar')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'HUF', N'Hungarian forint')
INSERT [Poc].[Currency] ([CurrencyCode], [CurrencyName]) VALUES (N'ISK', N'Icelandic krona')
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(100.000 AS Decimal(18, 3)), N'USD', N'1', CAST(N'2017-12-26 23:11:16.667' AS DateTime))
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(150.000 AS Decimal(18, 3)), N'USD', N'1', CAST(N'2017-12-26 23:11:24.690' AS DateTime))
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(50.000 AS Decimal(18, 3)), N'USD', N'2', CAST(N'2017-12-26 23:11:44.087' AS DateTime))
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(50.000 AS Decimal(18, 3)), N'USD', N'2', CAST(N'2017-12-26 23:11:46.767' AS DateTime))
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(50.000 AS Decimal(18, 3)), N'USD', N'2', CAST(N'2017-12-26 23:11:48.313' AS DateTime))
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(50.000 AS Decimal(18, 3)), N'USD', N'2', CAST(N'2017-12-26 23:11:49.627' AS DateTime))
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(70.000 AS Decimal(18, 3)), N'USD', N'1', CAST(N'2017-12-26 23:12:19.190' AS DateTime))
INSERT [Poc].[Transaction] ([AccountNumber], [Amount], [CurrencyCode], [Type], [TransactionDate]) VALUES (11111111, CAST(100.000 AS Decimal(18, 3)), N'USD', N'2', CAST(N'2017-12-26 23:12:27.017' AS DateTime))
/****** Object:  StoredProcedure [Poc].[GetAccountBalance]    Script Date: 2017-12-26 11:14:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- DROP PROCEDURE [Poc].[GetAccountBalance];
-- 2017/12/17 KietNM Create.
-- =============================================

CREATE PROCEDURE [Poc].[GetAccountBalance] (@accountNumber bigint)
AS

  SELECT
    AccountNumber,
    Balance,
    CurrencyCode,
    ModifiedDate
  FROM [Poc].[AccountBalance]
  WHERE AccountNumber = @accountNumber
--EXEC [Poc].[GetAccountBalance]  @accountNumber =11111111
GO
/****** Object:  StoredProcedure [Poc].[InsertDeposit]    Script Date: 2017-12-26 11:14:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- DROP PROCEDURE [Poc].[InsertDeposit];
-- 2017/12/17 KietNM Create.
-- =============================================

CREATE PROCEDURE [Poc].[InsertDeposit] (@accountNumber bigint, @amount decimal(18, 3), @currencyCode varchar(3))
AS
  DECLARE @LastChangeDate AS datetime
  SET @LastChangeDate = GETDATE()
  BEGIN TRAN
    INSERT INTO [Poc].[Transaction] ([AccountNumber]
    , [Amount]
    , [CurrencyCode]
    , [Type]
    , [TransactionDate])
      VALUES (@accountNumber, @amount, @currencyCode, 1, @LastChangeDate)
    IF EXISTS (SELECT
        *
      FROM [Poc].[AccountBalance] WITH (UPDLOCK, SERIALIZABLE)
      WHERE AccountNumber = @accountNumber)
    BEGIN
      UPDATE [Poc].[AccountBalance]
      SET [Balance] = Balance + @amount,
          [ModifiedDate] = @LastChangeDate
      WHERE AccountNumber = @accountNumber
    END
    ELSE
    BEGIN
      INSERT INTO [Poc].[AccountBalance] ([AccountNumber]
      , [Balance]
      , [CurrencyCode]
      , [ModifiedDate])
        VALUES (@accountNumber, @amount, @currencyCode, @LastChangeDate)
    END
    SELECT
      AccountNumber,
      Balance,
      CurrencyCode,
      ModifiedDate
    FROM [Poc].[AccountBalance]
    WHERE AccountNumber = @accountNumber
  COMMIT TRAN

GO
/****** Object:  StoredProcedure [Poc].[InsertWithdraw]    Script Date: 2017-12-26 11:14:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- DROP PROCEDURE [Poc].[InsertWithdraw];
-- 2017/12/17 KietNM Create.
-- =============================================
CREATE PROCEDURE [Poc].[InsertWithdraw] (@accountNumber bigint, @amount decimal(18, 3), @currencyCode varchar(3), @Result int OUTPUT)
AS
  DECLARE @LastChangeDate AS datetime
  SET @LastChangeDate = GETDATE()
  SET @Result = 0
  DECLARE @currentBalance AS decimal(18, 3)
  SET @currentBalance = 0
  BEGIN TRAN
    IF EXISTS (SELECT
        *
      FROM [Poc].[AccountBalance] WITH (UPDLOCK, SERIALIZABLE)
      WHERE AccountNumber = @accountNumber
      AND Balance - @amount >= 0)
    BEGIN
      INSERT INTO [Poc].[Transaction] ([AccountNumber]
      , [Amount]
      , [CurrencyCode]
      , [Type]
      , [TransactionDate])
        VALUES (@accountNumber, @amount, @currencyCode, 2, @LastChangeDate)
      UPDATE [Poc].[AccountBalance]
      SET [Balance] = Balance - @amount,
          [ModifiedDate] = @LastChangeDate
      WHERE AccountNumber = @accountNumber
    END
    ELSE
    BEGIN
      SET @Result = -1
    END
  COMMIT TRAN
  SELECT
    AccountNumber,
    Balance,
    CurrencyCode,
    ModifiedDate
  FROM [Poc].[AccountBalance]
  WHERE AccountNumber = @accountNumber
  RETURN @Result

--DECLARE @p4 int
--SET @p4 = -1
--EXEC [Poc].[InsertWithdraw] @accountNumber = 11111111,
--                            @amount = 8,
--                            @currencyCode = 'USD',
--                            @Result = @p4 OUTPUT
--SELECT
--  @p4
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The account number.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'AccountBalance', @level2type=N'COLUMN',@level2name=N'AccountNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current available balance.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'AccountBalance', @level2type=N'COLUMN',@level2name=N'Balance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The currency of the current available balance.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'AccountBalance', @level2type=N'COLUMN',@level2name=N'CurrencyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The account number.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'BankAccount', @level2type=N'COLUMN',@level2name=N'AccountNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ISO-4217 code.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'CurrencyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Currency Name' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'CurrencyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The account number.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'AccountNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of funds.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The currency of the funds.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'CurrencyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:Deposit; 2: Withdraw.' , @level0type=N'SCHEMA',@level0name=N'Poc', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'COLUMN',@level2name=N'Type'
GO
