.class public Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;
.super Ljava/lang/Object;
.source "OpenWMDescript.java"


# instance fields
.field private mCondition_desc:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->mCondition_desc:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "descCode"    # I

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "desc":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 173
    const-string v0, ""

    .line 175
    :goto_0
    return-object v0

    .line 19
    :sswitch_0
    const-string v0, "thunderstorm with light rain"

    .line 20
    goto :goto_0

    .line 22
    :sswitch_1
    const-string v0, "thunderstorm with rain"

    .line 23
    goto :goto_0

    .line 25
    :sswitch_2
    const-string v0, "thunderstorm with heavy rain"

    goto :goto_0

    .line 27
    :sswitch_3
    const-string v0, "light thunderstorm"

    goto :goto_0

    .line 29
    :sswitch_4
    const-string v0, "thunderstorm"

    goto :goto_0

    .line 31
    :sswitch_5
    const-string v0, "heavy thunderstorm"

    goto :goto_0

    .line 33
    :sswitch_6
    const-string v0, "ragged thunderstorm"

    goto :goto_0

    .line 35
    :sswitch_7
    const-string v0, "thunderstorm with light drizzle"

    goto :goto_0

    .line 37
    :sswitch_8
    const-string v0, "thunderstorm with drizzle"

    goto :goto_0

    .line 39
    :sswitch_9
    const-string v0, "thunderstorm with heavy drizzle"

    goto :goto_0

    .line 42
    :sswitch_a
    const-string v0, "light intensity drizzle"

    goto :goto_0

    .line 44
    :sswitch_b
    const-string v0, "drizzle"

    goto :goto_0

    .line 46
    :sswitch_c
    const-string v0, "heavy intensity drizzle"

    goto :goto_0

    .line 48
    :sswitch_d
    const-string v0, "light intensity drizzle rain"

    goto :goto_0

    .line 50
    :sswitch_e
    const-string v0, "drizzle rain"

    goto :goto_0

    .line 52
    :sswitch_f
    const-string v0, "heavy intensity drizzle rain"

    goto :goto_0

    .line 54
    :sswitch_10
    const-string v0, "shower rain and drizzle"

    goto :goto_0

    .line 56
    :sswitch_11
    const-string v0, "heavy shower rain and drizzle"

    goto :goto_0

    .line 58
    :sswitch_12
    const-string v0, "shower drizzle"

    goto :goto_0

    .line 61
    :sswitch_13
    const-string v0, "light rain"

    goto :goto_0

    .line 63
    :sswitch_14
    const-string v0, "moderate rain"

    goto :goto_0

    .line 65
    :sswitch_15
    const-string v0, "heavy intensity rain"

    goto :goto_0

    .line 67
    :sswitch_16
    const-string v0, "very heavy rain"

    goto :goto_0

    .line 69
    :sswitch_17
    const-string v0, "extreme rain"

    goto :goto_0

    .line 71
    :sswitch_18
    const-string v0, "freezing rain"

    goto :goto_0

    .line 73
    :sswitch_19
    const-string v0, "light intensity shower rain"

    goto :goto_0

    .line 75
    :sswitch_1a
    const-string v0, "shower rain"

    goto :goto_0

    .line 77
    :sswitch_1b
    const-string v0, "heavy intensity shower rain"

    goto :goto_0

    .line 79
    :sswitch_1c
    const-string v0, "ragged shower"

    goto :goto_0

    .line 82
    :sswitch_1d
    const-string v0, "light snow"

    goto :goto_0

    .line 84
    :sswitch_1e
    const-string v0, "snow"

    goto :goto_0

    .line 86
    :sswitch_1f
    const-string v0, "heavy snow"

    goto :goto_0

    .line 88
    :sswitch_20
    const-string v0, "sleet"

    goto :goto_0

    .line 90
    :sswitch_21
    const-string v0, "shower sleet"

    goto :goto_0

    .line 92
    :sswitch_22
    const-string v0, "light rain and snow"

    goto :goto_0

    .line 94
    :sswitch_23
    const-string v0, "rain and snow"

    goto :goto_0

    .line 96
    :sswitch_24
    const-string v0, "light shower snow"

    goto :goto_0

    .line 98
    :sswitch_25
    const-string v0, "shower snow"

    goto :goto_0

    .line 100
    :sswitch_26
    const-string v0, "heavy shower snow"

    goto :goto_0

    .line 103
    :sswitch_27
    const-string v0, "mist"

    goto :goto_0

    .line 105
    :sswitch_28
    const-string v0, "smoke"

    goto :goto_0

    .line 107
    :sswitch_29
    const-string v0, "haze"

    goto :goto_0

    .line 109
    :sswitch_2a
    const-string v0, "sand, dust whirls"

    goto/16 :goto_0

    .line 111
    :sswitch_2b
    const-string v0, "fog"

    goto/16 :goto_0

    .line 113
    :sswitch_2c
    const-string v0, "sand"

    goto/16 :goto_0

    .line 115
    :sswitch_2d
    const-string v0, "dust"

    goto/16 :goto_0

    .line 117
    :sswitch_2e
    const-string v0, "volcanic ash"

    goto/16 :goto_0

    .line 119
    :sswitch_2f
    const-string v0, "squalls"

    goto/16 :goto_0

    .line 121
    :sswitch_30
    const-string v0, "tornado"

    goto/16 :goto_0

    .line 124
    :sswitch_31
    const-string v0, "clear sky"

    goto/16 :goto_0

    .line 126
    :sswitch_32
    const-string v0, "few clouds"

    goto/16 :goto_0

    .line 128
    :sswitch_33
    const-string v0, "scattered clouds"

    goto/16 :goto_0

    .line 130
    :sswitch_34
    const-string v0, "broken clouds"

    goto/16 :goto_0

    .line 132
    :sswitch_35
    const-string v0, "overcast clouds"

    goto/16 :goto_0

    .line 135
    :sswitch_36
    const-string v0, "tornado"

    goto/16 :goto_0

    .line 137
    :sswitch_37
    const-string v0, "tropical storm"

    goto/16 :goto_0

    .line 139
    :sswitch_38
    const-string v0, "hurricane"

    goto/16 :goto_0

    .line 141
    :sswitch_39
    const-string v0, "cold"

    goto/16 :goto_0

    .line 143
    :sswitch_3a
    const-string v0, "hot"

    goto/16 :goto_0

    .line 145
    :sswitch_3b
    const-string v0, "windy"

    goto/16 :goto_0

    .line 147
    :sswitch_3c
    const-string v0, "hail"

    goto/16 :goto_0

    .line 149
    :sswitch_3d
    const-string v0, "calm"

    goto/16 :goto_0

    .line 151
    :sswitch_3e
    const-string v0, "light breeze"

    goto/16 :goto_0

    .line 153
    :sswitch_3f
    const-string v0, "gentle breeze"

    goto/16 :goto_0

    .line 155
    :sswitch_40
    const-string v0, "moderate breeze"

    goto/16 :goto_0

    .line 157
    :sswitch_41
    const-string v0, "fresh breeze"

    goto/16 :goto_0

    .line 159
    :sswitch_42
    const-string v0, "strong breeze"

    goto/16 :goto_0

    .line 161
    :sswitch_43
    const-string v0, "high wind, near gale"

    goto/16 :goto_0

    .line 163
    :sswitch_44
    const-string v0, "gale"

    goto/16 :goto_0

    .line 165
    :sswitch_45
    const-string v0, "severe gale"

    goto/16 :goto_0

    .line 167
    :sswitch_46
    const-string v0, "storm"

    goto/16 :goto_0

    .line 169
    :sswitch_47
    const-string v0, "violent storm"

    goto/16 :goto_0

    .line 171
    :sswitch_48
    const-string v0, "hurricane"

    goto/16 :goto_0

    .line 17
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xd2 -> :sswitch_3
        0xd3 -> :sswitch_4
        0xd4 -> :sswitch_5
        0xdd -> :sswitch_6
        0xe6 -> :sswitch_7
        0xe7 -> :sswitch_8
        0xe8 -> :sswitch_9
        0x12c -> :sswitch_a
        0x12d -> :sswitch_b
        0x12e -> :sswitch_c
        0x136 -> :sswitch_d
        0x137 -> :sswitch_e
        0x138 -> :sswitch_f
        0x139 -> :sswitch_10
        0x13a -> :sswitch_11
        0x141 -> :sswitch_12
        0x1f4 -> :sswitch_13
        0x1f5 -> :sswitch_14
        0x1f6 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x1ff -> :sswitch_18
        0x208 -> :sswitch_19
        0x209 -> :sswitch_1a
        0x20a -> :sswitch_1b
        0x213 -> :sswitch_1c
        0x258 -> :sswitch_1d
        0x259 -> :sswitch_1e
        0x25a -> :sswitch_1f
        0x263 -> :sswitch_20
        0x264 -> :sswitch_21
        0x267 -> :sswitch_22
        0x268 -> :sswitch_23
        0x26c -> :sswitch_24
        0x26d -> :sswitch_25
        0x26e -> :sswitch_26
        0x2bd -> :sswitch_27
        0x2c7 -> :sswitch_28
        0x2d1 -> :sswitch_29
        0x2db -> :sswitch_2a
        0x2e5 -> :sswitch_2b
        0x2ef -> :sswitch_2c
        0x2f9 -> :sswitch_2d
        0x2fa -> :sswitch_2e
        0x303 -> :sswitch_2f
        0x30d -> :sswitch_30
        0x320 -> :sswitch_31
        0x321 -> :sswitch_32
        0x322 -> :sswitch_33
        0x323 -> :sswitch_34
        0x324 -> :sswitch_35
        0x384 -> :sswitch_36
        0x385 -> :sswitch_37
        0x386 -> :sswitch_38
        0x387 -> :sswitch_39
        0x388 -> :sswitch_3a
        0x389 -> :sswitch_3b
        0x38a -> :sswitch_3c
        0x3b7 -> :sswitch_3d
        0x3b8 -> :sswitch_3e
        0x3b9 -> :sswitch_3f
        0x3ba -> :sswitch_40
        0x3bb -> :sswitch_41
        0x3bc -> :sswitch_42
        0x3bd -> :sswitch_43
        0x3be -> :sswitch_44
        0x3bf -> :sswitch_45
        0x3c0 -> :sswitch_46
        0x3c1 -> :sswitch_47
        0x3c2 -> :sswitch_48
    .end sparse-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 13
    return-void
.end method
