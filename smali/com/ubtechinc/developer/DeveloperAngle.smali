.class public Lcom/ubtechinc/developer/DeveloperAngle;
.super Ljava/lang/Object;
.source "DeveloperAngle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAngle(BI)I
    .locals 7
    .param p1, "id"    # B
    .param p2, "angle"    # I

    .prologue
    const/16 v6, 0x8c

    const/16 v5, 0x32

    const/16 v4, 0x23

    const/4 v3, 0x5

    const/16 v2, 0xa

    .line 130
    add-int/lit8 v1, p1, -0x1

    int-to-byte p1, v1

    .line 131
    const/16 v1, 0xfa

    if-ne p2, v1, :cond_0

    move v0, p2

    .line 233
    .end local p2    # "angle":I
    .local v0, "angle":I
    :goto_0
    return v0

    .line 134
    .end local v0    # "angle":I
    .restart local p2    # "angle":I
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 135
    :cond_1
    if-ge p2, v3, :cond_3

    .line 136
    const/4 p2, 0x5

    :cond_2
    :goto_1
    move v0, p2

    .line 233
    .end local p2    # "angle":I
    .restart local v0    # "angle":I
    goto :goto_0

    .line 137
    .end local v0    # "angle":I
    .restart local p2    # "angle":I
    :cond_3
    const/16 v1, 0xeb

    if-le p2, v1, :cond_2

    .line 138
    const/16 p2, 0xeb

    goto :goto_1

    .line 140
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 141
    if-ge p2, v5, :cond_5

    .line 142
    const/16 p2, 0x32

    goto :goto_1

    .line 143
    :cond_5
    const/16 v1, 0xd2

    if-le p2, v1, :cond_2

    .line 144
    const/16 p2, 0xd2

    goto :goto_1

    .line 146
    :cond_6
    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    if-ne p1, v3, :cond_9

    .line 147
    :cond_7
    const/16 v1, 0x37

    if-ge p2, v1, :cond_8

    .line 148
    const/16 p2, 0x37

    goto :goto_1

    .line 149
    :cond_8
    const/16 v1, 0xb9

    if-le p2, v1, :cond_2

    .line 150
    const/16 p2, 0xb9

    goto :goto_1

    .line 152
    :cond_9
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 153
    const/16 v1, 0x1e

    if-ge p2, v1, :cond_a

    .line 154
    const/16 p2, 0x1e

    goto :goto_1

    .line 155
    :cond_a
    const/16 v1, 0xbe

    if-le p2, v1, :cond_2

    .line 156
    const/16 p2, 0xbe

    goto :goto_1

    .line 158
    :cond_b
    const/4 v1, 0x6

    if-ne p1, v1, :cond_d

    .line 159
    const/16 v1, 0x64

    if-ge p2, v1, :cond_c

    .line 160
    const/16 p2, 0x64

    goto :goto_1

    .line 161
    :cond_c
    const/16 v1, 0xc8

    if-le p2, v1, :cond_2

    .line 162
    const/16 p2, 0xc8

    goto :goto_1

    .line 164
    :cond_d
    const/4 v1, 0x7

    if-eq p1, v1, :cond_e

    const/16 v1, 0xc

    if-ne p1, v1, :cond_10

    .line 165
    :cond_e
    const/16 v1, 0x14

    if-ge p2, v1, :cond_f

    .line 166
    const/16 p2, 0x14

    goto :goto_1

    .line 167
    :cond_f
    const/16 v1, 0xdc

    if-le p2, v1, :cond_2

    .line 168
    const/16 p2, 0xdc

    goto :goto_1

    .line 170
    :cond_10
    const/16 v1, 0x8

    if-ne p1, v1, :cond_12

    .line 171
    if-ge p2, v4, :cond_11

    .line 172
    const/16 p2, 0x23

    goto :goto_1

    .line 173
    :cond_11
    const/16 v1, 0xe6

    if-le p2, v1, :cond_2

    .line 174
    const/16 p2, 0xe6

    goto :goto_1

    .line 176
    :cond_12
    const/16 v1, 0x9

    if-ne p1, v1, :cond_14

    .line 177
    if-ge p2, v4, :cond_13

    .line 178
    const/16 p2, 0x23

    goto :goto_1

    .line 179
    :cond_13
    const/16 v1, 0xd7

    if-le p2, v1, :cond_2

    .line 180
    const/16 p2, 0xd7

    goto/16 :goto_1

    .line 182
    :cond_14
    if-ne p1, v2, :cond_16

    .line 183
    if-ge p2, v2, :cond_15

    .line 184
    const/16 p2, 0xa

    goto/16 :goto_1

    .line 185
    :cond_15
    const/16 v1, 0xbe

    if-le p2, v1, :cond_2

    .line 186
    const/16 p2, 0xbe

    goto/16 :goto_1

    .line 188
    :cond_16
    const/16 v1, 0xb

    if-ne p1, v1, :cond_18

    .line 189
    const/16 v1, 0x28

    if-ge p2, v1, :cond_17

    .line 190
    const/16 p2, 0x28

    goto/16 :goto_1

    .line 191
    :cond_17
    if-le p2, v6, :cond_2

    .line 192
    const/16 p2, 0x8c

    goto/16 :goto_1

    .line 194
    :cond_18
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1a

    .line 195
    if-ge p2, v2, :cond_19

    .line 196
    const/16 p2, 0xa

    goto/16 :goto_1

    .line 197
    :cond_19
    const/16 v1, 0xcd

    if-le p2, v1, :cond_2

    .line 198
    const/16 p2, 0xcd

    goto/16 :goto_1

    .line 200
    :cond_1a
    const/16 v1, 0xe

    if-ne p1, v1, :cond_1c

    .line 201
    const/16 v1, 0x19

    if-ge p2, v1, :cond_1b

    .line 202
    const/16 p2, 0x19

    goto/16 :goto_1

    .line 203
    :cond_1b
    const/16 v1, 0xcd

    if-le p2, v1, :cond_2

    .line 204
    const/16 p2, 0xcd

    goto/16 :goto_1

    .line 206
    :cond_1c
    const/16 v1, 0xf

    if-ne p1, v1, :cond_1e

    .line 207
    if-ge p2, v5, :cond_1d

    .line 208
    const/16 p2, 0x32

    goto/16 :goto_1

    .line 209
    :cond_1d
    if-le p2, v6, :cond_2

    .line 210
    const/16 p2, 0x8c

    goto/16 :goto_1

    .line 212
    :cond_1e
    const/16 v1, 0x10

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x11

    if-ne p1, v1, :cond_21

    .line 214
    :cond_1f
    const/16 v1, 0x5f

    if-ge p2, v1, :cond_20

    .line 215
    const/16 p2, 0x5f

    goto/16 :goto_1

    .line 216
    :cond_20
    const/16 v1, 0x7d

    if-le p2, v1, :cond_2

    .line 217
    const/16 p2, 0x7d

    goto/16 :goto_1

    .line 220
    :cond_21
    const/16 v1, 0x12

    if-ne p1, v1, :cond_23

    .line 221
    const/16 v1, 0x4b

    if-ge p2, v1, :cond_22

    .line 222
    const/16 p2, 0x4b

    goto/16 :goto_1

    .line 223
    :cond_22
    const/16 v1, 0xa5

    if-le p2, v1, :cond_2

    .line 224
    const/16 p2, 0xa5

    goto/16 :goto_1

    .line 226
    :cond_23
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 227
    const/16 v1, 0x69

    if-ge p2, v1, :cond_24

    .line 228
    const/16 p2, 0x69

    goto/16 :goto_1

    .line 229
    :cond_24
    const/16 v1, 0x93

    if-le p2, v1, :cond_2

    .line 230
    const/16 p2, 0x93

    goto/16 :goto_1
.end method

.method public checkData([I)V
    .locals 8
    .param p1, "data"    # [I

    .prologue
    const/16 v7, 0xbe

    const/16 v6, 0x8c

    const/16 v5, 0x32

    const/16 v4, 0x23

    const/16 v3, 0xa

    .line 16
    if-eqz p1, :cond_24

    array-length v1, p1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_24

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_24

    .line 18
    aget v1, p1, v0

    const/16 v2, 0xfa

    if-ne v1, v2, :cond_1

    .line 17
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 21
    :cond_2
    aget v1, p1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 22
    const/4 v1, 0x5

    aput v1, p1, v0

    goto :goto_1

    .line 23
    :cond_3
    aget v1, p1, v0

    const/16 v2, 0xeb

    if-le v1, v2, :cond_0

    .line 24
    const/16 v1, 0xeb

    aput v1, p1, v0

    goto :goto_1

    .line 26
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 27
    aget v1, p1, v0

    if-ge v1, v5, :cond_5

    .line 28
    aput v5, p1, v0

    goto :goto_1

    .line 29
    :cond_5
    aget v1, p1, v0

    const/16 v2, 0xd2

    if-le v1, v2, :cond_0

    .line 30
    const/16 v1, 0xd2

    aput v1, p1, v0

    goto :goto_1

    .line 32
    :cond_6
    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 33
    :cond_7
    aget v1, p1, v0

    const/16 v2, 0x37

    if-ge v1, v2, :cond_8

    .line 34
    const/16 v1, 0x37

    aput v1, p1, v0

    goto :goto_1

    .line 35
    :cond_8
    aget v1, p1, v0

    const/16 v2, 0xb9

    if-le v1, v2, :cond_0

    .line 36
    const/16 v1, 0xb9

    aput v1, p1, v0

    goto :goto_1

    .line 38
    :cond_9
    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 39
    aget v1, p1, v0

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_a

    .line 40
    const/16 v1, 0x1e

    aput v1, p1, v0

    goto :goto_1

    .line 41
    :cond_a
    aget v1, p1, v0

    if-le v1, v7, :cond_0

    .line 42
    aput v7, p1, v0

    goto :goto_1

    .line 44
    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    .line 45
    aget v1, p1, v0

    const/16 v2, 0x64

    if-ge v1, v2, :cond_c

    .line 46
    const/16 v1, 0x64

    aput v1, p1, v0

    goto :goto_1

    .line 47
    :cond_c
    aget v1, p1, v0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    .line 48
    const/16 v1, 0xc8

    aput v1, p1, v0

    goto :goto_1

    .line 50
    :cond_d
    const/4 v1, 0x7

    if-eq v0, v1, :cond_e

    const/16 v1, 0xc

    if-ne v0, v1, :cond_10

    .line 51
    :cond_e
    aget v1, p1, v0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_f

    .line 52
    const/16 v1, 0x14

    aput v1, p1, v0

    goto/16 :goto_1

    .line 53
    :cond_f
    aget v1, p1, v0

    const/16 v2, 0xdc

    if-le v1, v2, :cond_0

    .line 54
    const/16 v1, 0xdc

    aput v1, p1, v0

    goto/16 :goto_1

    .line 56
    :cond_10
    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 57
    aget v1, p1, v0

    if-ge v1, v4, :cond_11

    .line 58
    aput v4, p1, v0

    goto/16 :goto_1

    .line 59
    :cond_11
    aget v1, p1, v0

    const/16 v2, 0xe6

    if-le v1, v2, :cond_0

    .line 60
    const/16 v1, 0xe6

    aput v1, p1, v0

    goto/16 :goto_1

    .line 62
    :cond_12
    const/16 v1, 0x9

    if-ne v0, v1, :cond_14

    .line 63
    aget v1, p1, v0

    if-ge v1, v4, :cond_13

    .line 64
    aput v4, p1, v0

    goto/16 :goto_1

    .line 65
    :cond_13
    aget v1, p1, v0

    const/16 v2, 0xd7

    if-le v1, v2, :cond_0

    .line 66
    const/16 v1, 0xd7

    aput v1, p1, v0

    goto/16 :goto_1

    .line 68
    :cond_14
    if-ne v0, v3, :cond_16

    .line 69
    aget v1, p1, v0

    if-ge v1, v3, :cond_15

    .line 70
    aput v3, p1, v0

    goto/16 :goto_1

    .line 71
    :cond_15
    aget v1, p1, v0

    if-le v1, v7, :cond_0

    .line 72
    aput v7, p1, v0

    goto/16 :goto_1

    .line 74
    :cond_16
    const/16 v1, 0xb

    if-ne v0, v1, :cond_18

    .line 75
    aget v1, p1, v0

    const/16 v2, 0x28

    if-ge v1, v2, :cond_17

    .line 76
    const/16 v1, 0x28

    aput v1, p1, v0

    goto/16 :goto_1

    .line 77
    :cond_17
    aget v1, p1, v0

    if-le v1, v6, :cond_0

    .line 78
    aput v6, p1, v0

    goto/16 :goto_1

    .line 80
    :cond_18
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    .line 81
    aget v1, p1, v0

    if-ge v1, v3, :cond_19

    .line 82
    aput v3, p1, v0

    goto/16 :goto_1

    .line 83
    :cond_19
    aget v1, p1, v0

    const/16 v2, 0xcd

    if-le v1, v2, :cond_0

    .line 84
    const/16 v1, 0xcd

    aput v1, p1, v0

    goto/16 :goto_1

    .line 86
    :cond_1a
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    .line 87
    aget v1, p1, v0

    const/16 v2, 0x19

    if-ge v1, v2, :cond_1b

    .line 88
    const/16 v1, 0x19

    aput v1, p1, v0

    goto/16 :goto_1

    .line 89
    :cond_1b
    aget v1, p1, v0

    const/16 v2, 0xcd

    if-le v1, v2, :cond_0

    .line 90
    const/16 v1, 0xcd

    aput v1, p1, v0

    goto/16 :goto_1

    .line 92
    :cond_1c
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1e

    .line 93
    aget v1, p1, v0

    if-ge v1, v5, :cond_1d

    .line 94
    aput v5, p1, v0

    goto/16 :goto_1

    .line 95
    :cond_1d
    aget v1, p1, v0

    if-le v1, v6, :cond_0

    .line 96
    aput v6, p1, v0

    goto/16 :goto_1

    .line 98
    :cond_1e
    const/16 v1, 0x10

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x11

    if-ne v0, v1, :cond_21

    .line 100
    :cond_1f
    aget v1, p1, v0

    const/16 v2, 0x5f

    if-ge v1, v2, :cond_20

    .line 101
    const/16 v1, 0x5f

    aput v1, p1, v0

    goto/16 :goto_1

    .line 102
    :cond_20
    aget v1, p1, v0

    const/16 v2, 0x7d

    if-le v1, v2, :cond_0

    .line 103
    const/16 v1, 0x7d

    aput v1, p1, v0

    goto/16 :goto_1

    .line 106
    :cond_21
    const/16 v1, 0x12

    if-ne v0, v1, :cond_23

    .line 107
    aget v1, p1, v0

    const/16 v2, 0x4b

    if-ge v1, v2, :cond_22

    .line 108
    const/16 v1, 0x4b

    aput v1, p1, v0

    goto/16 :goto_1

    .line 109
    :cond_22
    aget v1, p1, v0

    const/16 v2, 0xa5

    if-le v1, v2, :cond_0

    .line 110
    const/16 v1, 0xa5

    aput v1, p1, v0

    goto/16 :goto_1

    .line 112
    :cond_23
    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 113
    aget v1, p1, v0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    .line 114
    aget v1, p1, v0

    const/16 v2, 0x9b

    if-le v1, v2, :cond_0

    .line 115
    const/16 v1, 0x9b

    aput v1, p1, v0

    goto/16 :goto_1

    .line 120
    .end local v0    # "i":I
    :cond_24
    return-void
.end method
