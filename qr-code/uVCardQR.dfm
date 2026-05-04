object frmVCardQR: TfrmVCardQR
  Left = 0
  Top = 0
  Caption = 'QR Code vCard Generator - Silver Pascal Coder'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      800
      600)
    object Image1: TImage
      Left = 410
      Top = 16
      Width = 370
      Height = 370
      Anchors = [akTop, akRight]
      Center = True
      Proportional = True
      Stretch = True
      ExplicitLeft = 395
    end
    object btnGenerate: TButton
      Left = 410
      Top = 400
      Width = 175
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Generate QR Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnGenerateClick
    end
    object btnSave: TButton
      Left = 605
      Top = 400
      Width = 175
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Save QR Code...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSaveClick
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 378
      Height = 569
      Anchors = [akLeft, akTop, akBottom]
      Caption = ' Contact Information '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 24
        Top = 40
        Width = 57
        Height = 13
        Caption = 'First Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 72
        Width = 55
        Height = 13
        Caption = 'Last Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 136
        Width = 80
        Height = 13
        Caption = 'Phone Number:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 168
        Width = 30
        Height = 13
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 232
        Width = 51
        Height = 13
        Caption = 'Company:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 264
        Width = 25
        Height = 13
        Caption = 'Title:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 328
        Width = 45
        Height = 13
        Caption = 'Website:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblInfo: TLabel
        Left = 24
        Top = 520
        Width = 331
        Height = 33
        AutoSize = False
        Caption = 
          'Info: Scan this QR code with your phone camera to instantly save' +
          ' this contact.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -10
        Font.Name = 'Segoe UI'
        Font.Style = [fsItalic]
        ParentFont = False
        WordWrap = True
      end
      object edtFirstName: TEdit
        Left = 120
        Top = 37
        Width = 234
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'John'
      end
      object edtLastName: TEdit
        Left = 120
        Top = 69
        Width = 234
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'Smith'
      end
      object edtPhone: TEdit
        Left = 120
        Top = 133
        Width = 234
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '+1 555 123 4567'
      end
      object edtEmail: TEdit
        Left = 120
        Top = 165
        Width = 234
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'john@silverpascal.com'
      end
      object edtCompany: TEdit
        Left = 120
        Top = 229
        Width = 234
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = 'Silver Pascal Coders'
      end
      object edtTitle: TEdit
        Left = 120
        Top = 261
        Width = 234
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = 'Lead Developer'
      end
      object edtWebsite: TEdit
        Left = 120
        Top = 325
        Width = 234
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Text = 'https://silverpascal.com'
      end
      object GroupBox2: TGroupBox
        Left = 24
        Top = 104
        Width = 330
        Height = 17
        Caption = ' Contact Details '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object GroupBox3: TGroupBox
        Left = 24
        Top = 200
        Width = 330
        Height = 17
        Caption = ' Professional Info '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object GroupBox4: TGroupBox
        Left = 24
        Top = 296
        Width = 330
        Height = 17
        Caption = ' Online Presence '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object btnClear: TButton
        Left = 120
        Top = 376
        Width = 110
        Height = 33
        Caption = 'Clear Form'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = btnClearClick
      end
      object btnExample: TButton
        Left = 244
        Top = 376
        Width = 110
        Height = 33
        Caption = 'Load Example'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = btnExampleClick
      end
      object chkIncludeAddress: TCheckBox
        Left = 24
        Top = 425
        Width = 137
        Height = 17
        Caption = 'Include Address Field'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = chkIncludeAddressClick
      end
      object PanelAddress: TPanel
        Left = 24
        Top = 448
        Width = 330
        Height = 66
        BevelOuter = bvNone
        TabOrder = 13
        Visible = False
        object Label8: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Street:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 32
          Width = 22
          Height = 13
          Caption = 'City:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 170
          Top = 32
          Width = 29
          Height = 13
          Caption = 'State:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtStreet: TEdit
          Left = 56
          Top = 5
          Width = 270
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '123 Coding Lane'
        end
        object edtCity: TEdit
          Left = 56
          Top = 29
          Width = 105
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Tech City'
        end
        object edtState: TEdit
          Left = 210
          Top = 29
          Width = 60
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'CA'
        end
        object edtZip: TEdit
          Left = 280
          Top = 29
          Width = 46
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '90210'
        end
      end
    end
  end
end
