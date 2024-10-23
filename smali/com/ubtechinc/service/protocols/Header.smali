.class public Lcom/ubtechinc/service/protocols/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private index:I

.field private len:I

.field private mExtInfo:S

.field private mFlag:S

.field private mLength:I

.field private mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field private mVersion:S

.field private msg:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    .line 71
    return-void
.end method


# virtual methods
.method public getMsg()[B
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/Header;->msg:[B

    return-object v0
.end method

.method public getmExtInfo()S
    .locals 1

    .prologue
    .line 234
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/Header;->mExtInfo:S

    return v0
.end method

.method public getmFlag()S
    .locals 1

    .prologue
    .line 218
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/Header;->mFlag:S

    return v0
.end method

.method public getmLength()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    return v0
.end method

.method public getmVerSion()S
    .locals 1

    .prologue
    .line 242
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/Header;->mVersion:S

    return v0
.end method

.method public packetHeader(Lcom/ubtechinc/tools/PacketData;)V
    .locals 1
    .param p1, "packet"    # Lcom/ubtechinc/tools/PacketData;

    .prologue
    .line 60
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/Header;->mFlag:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ubtechinc/tools/PacketData;->putShort(Ljava/lang/Short;)V

    .line 61
    iget v0, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    invoke-virtual {p1, v0}, Lcom/ubtechinc/tools/PacketData;->putInt(I)V

    .line 62
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/Header;->mVersion:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ubtechinc/tools/PacketData;->putShort(Ljava/lang/Short;)V

    .line 63
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/Header;->mExtInfo:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ubtechinc/tools/PacketData;->putShort(Ljava/lang/Short;)V

    .line 64
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/Header;->msg:[B

    invoke-virtual {p1, v0}, Lcom/ubtechinc/tools/PacketData;->putBytes([B)V

    .line 65
    return-void
.end method

.method public readSocketInputStream(Ljava/io/DataInputStream;)I
    .locals 10
    .param p1, "dis"    # Ljava/io/DataInputStream;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x4

    const/4 v5, 0x0

    .line 153
    const/4 v7, 0x2

    :try_start_0
    new-array v1, v7, [B

    .line 155
    .local v1, "bys":[B
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-nez v7, :cond_1

    .line 214
    .end local v1    # "bys":[B
    :cond_0
    :goto_0
    return v5

    .line 159
    .restart local v1    # "bys":[B
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 160
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v1, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-virtual {p0, v7}, Lcom/ubtechinc/service/protocols/Header;->setmFlag(S)V

    .line 163
    invoke-virtual {p0}, Lcom/ubtechinc/service/protocols/Header;->getmFlag()S

    move-result v7

    const/16 v8, 0x1234

    if-ne v7, v8, :cond_0

    .line 167
    const/4 v7, 0x4

    new-array v1, v7, [B

    .line 168
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 169
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v1, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/ubtechinc/service/protocols/Header;->setmLength(I)V

    .line 173
    invoke-virtual {p0}, Lcom/ubtechinc/service/protocols/Header;->getmLength()I

    move-result v7

    if-lt v7, v9, :cond_0

    .line 177
    const/4 v7, 0x2

    new-array v1, v7, [B

    .line 178
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 179
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v1, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-virtual {p0, v7}, Lcom/ubtechinc/service/protocols/Header;->setmVerSion(S)V

    .line 182
    invoke-virtual {p0}, Lcom/ubtechinc/service/protocols/Header;->getmVerSion()S

    move-result v7

    if-ne v7, v6, :cond_0

    .line 186
    const/4 v7, 0x2

    new-array v1, v7, [B

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 188
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v1, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-virtual {p0, v7}, Lcom/ubtechinc/service/protocols/Header;->setmExtInfo(S)V

    .line 193
    invoke-virtual {p0}, Lcom/ubtechinc/service/protocols/Header;->getmLength()I

    move-result v7

    add-int/lit8 v4, v7, -0x4

    .line 194
    .local v4, "len":I
    new-array v1, v4, [B

    .line 195
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 196
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    aput-byte v7, v1, v3

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ubtechinc/service/protocols/Header;->setMsg([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v5, v6

    .line 214
    goto/16 :goto_0

    .line 200
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bys":[B
    .end local v3    # "i":I
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 202
    const/4 v5, -0x2

    goto/16 :goto_0

    .line 203
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v2

    .line 204
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 205
    const/4 v5, -0x3

    goto/16 :goto_0

    .line 206
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v2

    .line 207
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 209
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const/4 v5, -0x1

    goto/16 :goto_0
.end method

.method public setData(B)Z
    .locals 5
    .param p1, "data"    # B

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "bRet":Z
    :try_start_0
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$1;->$SwitchMap$com$ubtechinc$service$protocols$Header$HERADER_STATE:[I

    iget-object v3, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    invoke-virtual {v3}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 84
    :pswitch_0
    and-int/lit16 v2, p1, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mFlag:S

    .line 85
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    shl-int/lit8 v2, p1, 0x8

    :try_start_1
    iget-short v3, p0, Lcom/ubtechinc/service/protocols/Header;->mFlag:S

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mFlag:S

    .line 89
    iget-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mFlag:S

    invoke-virtual {p0, v2}, Lcom/ubtechinc/service/protocols/Header;->setmFlag(S)V

    .line 90
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto :goto_0

    .line 93
    :pswitch_2
    and-int/lit16 v2, p1, 0xff

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    .line 94
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto :goto_0

    .line 97
    :pswitch_3
    iget v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    shl-int/lit8 v3, p1, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    .line 98
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH3:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto :goto_0

    .line 101
    :pswitch_4
    iget v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    shl-int/lit8 v3, p1, 0x18

    ushr-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    .line 102
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH4:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto :goto_0

    .line 105
    :pswitch_5
    iget v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    shl-int/lit8 v3, p1, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    .line 106
    iget v2, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    invoke-virtual {p0, v2}, Lcom/ubtechinc/service/protocols/Header;->setmLength(I)V

    .line 107
    invoke-virtual {p0}, Lcom/ubtechinc/service/protocols/Header;->getmLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->len:I

    .line 108
    iget v2, p0, Lcom/ubtechinc/service/protocols/Header;->len:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->msg:[B

    .line 109
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->VERSION1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto :goto_0

    .line 112
    :pswitch_6
    and-int/lit16 v2, p1, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mVersion:S

    .line 113
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->VERSION2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto :goto_0

    .line 116
    :pswitch_7
    shl-int/lit8 v2, p1, 0x8

    iget-short v3, p0, Lcom/ubtechinc/service/protocols/Header;->mVersion:S

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mVersion:S

    .line 117
    iget-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mVersion:S

    invoke-virtual {p0, v2}, Lcom/ubtechinc/service/protocols/Header;->setmVerSion(S)V

    .line 118
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->EXTINFO1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto/16 :goto_0

    .line 121
    :pswitch_8
    and-int/lit16 v2, p1, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mExtInfo:S

    .line 122
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->EXTINFO2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    goto/16 :goto_0

    .line 125
    :pswitch_9
    shl-int/lit8 v2, p1, 0x8

    iget-short v3, p0, Lcom/ubtechinc/service/protocols/Header;->mExtInfo:S

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mExtInfo:S

    .line 126
    iget-short v2, p0, Lcom/ubtechinc/service/protocols/Header;->mExtInfo:S

    invoke-virtual {p0, v2}, Lcom/ubtechinc/service/protocols/Header;->setmExtInfo(S)V

    .line 127
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->MSG:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    .line 128
    iget v2, p0, Lcom/ubtechinc/service/protocols/Header;->len:I

    if-nez v2, :cond_0

    .line 129
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    .line 130
    const/4 v2, 0x0

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->index:I

    .line 131
    const/4 v2, 0x0

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->len:I

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 136
    :pswitch_a
    iget-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->msg:[B

    iget v3, p0, Lcom/ubtechinc/service/protocols/Header;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/ubtechinc/service/protocols/Header;->index:I

    aput-byte p1, v2, v3

    .line 137
    iget v2, p0, Lcom/ubtechinc/service/protocols/Header;->index:I

    iget v3, p0, Lcom/ubtechinc/service/protocols/Header;->len:I

    if-ne v2, v3, :cond_0

    .line 138
    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/Header;->mState:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    .line 139
    const/4 v2, 0x0

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->index:I

    .line 140
    const/4 v2, 0x0

    iput v2, p0, Lcom/ubtechinc/service/protocols/Header;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setMsg([B)V
    .locals 0
    .param p1, "msg"    # [B

    .prologue
    .line 254
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/Header;->msg:[B

    .line 255
    return-void
.end method

.method public setmExtInfo(S)V
    .locals 0
    .param p1, "mExtInfo"    # S

    .prologue
    .line 238
    iput-short p1, p0, Lcom/ubtechinc/service/protocols/Header;->mExtInfo:S

    .line 239
    return-void
.end method

.method public setmFlag(S)V
    .locals 0
    .param p1, "mFlag"    # S

    .prologue
    .line 222
    iput-short p1, p0, Lcom/ubtechinc/service/protocols/Header;->mFlag:S

    .line 223
    return-void
.end method

.method public setmLength(I)V
    .locals 0
    .param p1, "mLength"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/ubtechinc/service/protocols/Header;->mLength:I

    .line 231
    return-void
.end method

.method public setmVerSion(S)V
    .locals 0
    .param p1, "mVerSion"    # S

    .prologue
    .line 246
    iput-short p1, p0, Lcom/ubtechinc/service/protocols/Header;->mVersion:S

    .line 247
    return-void
.end method
