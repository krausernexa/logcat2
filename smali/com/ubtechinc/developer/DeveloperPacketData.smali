.class public Lcom/ubtechinc/developer/DeveloperPacketData;
.super Ljava/lang/Object;
.source "DeveloperPacketData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field private nCapacity:I

.field private nPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "Capacity"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nCapacity:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 34
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nCapacity:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    .line 35
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    return-void
.end method

.method private Allocate(I)Z
    .locals 3
    .param p1, "nlen"    # I

    .prologue
    .line 46
    iget v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nCapacity:I

    if-le v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 48
    .local v0, "temp":[B
    iget v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nCapacity:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nCapacity:I

    .line 49
    iget v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nCapacity:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    .line 50
    iget-object v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    iget-object v1, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    .end local v0    # "temp":[B
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static bytesReverseOrder([B)[B
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 475
    array-length v1, p0

    .line 476
    .local v1, "length":I
    new-array v2, v1, [B

    .line 477
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 478
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, p0, v0

    aput-byte v4, v2, v3

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_0
    return-object v2
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 319
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, "result":Ljava/lang/StringBuffer;
    array-length v1, p0

    .line 321
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 322
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static hBytesToFloat([B)F
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 450
    .local v1, "i":I
    new-instance v0, Ljava/lang/Float;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    .line 451
    .local v0, "F":Ljava/lang/Float;
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 453
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static hBytesToInt([B)I
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/4 v4, 0x3

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 353
    aget-byte v2, p0, v0

    if-ltz v2, :cond_0

    .line 354
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 358
    :goto_1
    mul-int/lit16 v1, v1, 0x100

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v0

    add-int v1, v2, v3

    goto :goto_1

    .line 360
    :cond_1
    aget-byte v2, p0, v4

    if-ltz v2, :cond_2

    .line 361
    aget-byte v2, p0, v4

    add-int/2addr v1, v2

    .line 365
    :goto_2
    return v1

    .line 363
    :cond_2
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v4

    add-int v1, v2, v3

    goto :goto_2
.end method

.method public static hBytesToShort([B)S
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "s":I
    aget-byte v2, p0, v3

    if-ltz v2, :cond_0

    .line 403
    aget-byte v2, p0, v3

    add-int/2addr v1, v2

    .line 407
    :goto_0
    mul-int/lit16 v1, v1, 0x100

    .line 408
    aget-byte v2, p0, v4

    if-ltz v2, :cond_1

    .line 409
    aget-byte v2, p0, v4

    add-int/2addr v1, v2

    .line 413
    :goto_1
    int-to-short v0, v1

    .line 414
    .local v0, "result":S
    return v0

    .line 405
    .end local v0    # "result":S
    :cond_0
    aget-byte v2, p0, v3

    add-int/lit16 v1, v2, 0x100

    goto :goto_0

    .line 411
    :cond_1
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v4

    add-int v1, v2, v3

    goto :goto_1
.end method

.method public static lBytesToFloat([B)F
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "i":I
    new-instance v0, Ljava/lang/Float;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    .line 466
    .local v0, "F":Ljava/lang/Float;
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 468
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static lBytesToInt([B)I
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/4 v4, 0x0

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 378
    rsub-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    if-ltz v2, :cond_0

    .line 379
    rsub-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    add-int/2addr v1, v2

    .line 383
    :goto_1
    mul-int/lit16 v1, v1, 0x100

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    add-int/lit16 v2, v1, 0x100

    rsub-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    add-int v1, v2, v3

    goto :goto_1

    .line 385
    :cond_1
    aget-byte v2, p0, v4

    if-ltz v2, :cond_2

    .line 386
    aget-byte v2, p0, v4

    add-int/2addr v1, v2

    .line 390
    :goto_2
    return v1

    .line 388
    :cond_2
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v4

    add-int v1, v2, v3

    goto :goto_2
.end method

.method public static lBytesToShort([B)S
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "s":I
    aget-byte v2, p0, v4

    if-ltz v2, :cond_0

    .line 427
    aget-byte v2, p0, v4

    add-int/2addr v1, v2

    .line 431
    :goto_0
    mul-int/lit16 v1, v1, 0x100

    .line 432
    aget-byte v2, p0, v3

    if-ltz v2, :cond_1

    .line 433
    aget-byte v2, p0, v3

    add-int/2addr v1, v2

    .line 437
    :goto_1
    int-to-short v0, v1

    .line 438
    .local v0, "result":S
    return v0

    .line 429
    .end local v0    # "result":S
    :cond_0
    aget-byte v2, p0, v4

    add-int/lit16 v1, v2, 0x100

    goto :goto_0

    .line 435
    :cond_1
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v3

    add-int v1, v2, v3

    goto :goto_1
.end method

.method public static logBytes([B)V
    .locals 5
    .param p0, "bb"    # [B

    .prologue
    .line 491
    array-length v1, p0

    .line 492
    .local v1, "length":I
    const-string v2, ""

    .line 493
    .local v2, "out":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method public static printBytes([B)V
    .locals 1
    .param p0, "bb"    # [B

    .prologue
    .line 487
    array-length v0, p0

    .line 488
    .local v0, "length":I
    return-void
.end method

.method public static reverseFloat(F)F
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 532
    .line 533
    invoke-static {p0}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(F)[B

    move-result-object v1

    .line 532
    invoke-static {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->hBytesToFloat([B)F

    move-result v0

    .line 534
    .local v0, "result":F
    return v0
.end method

.method public static reverseInt(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 506
    .line 507
    invoke-static {p0}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(I)[B

    move-result-object v1

    .line 506
    invoke-static {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->hBytesToInt([B)I

    move-result v0

    .line 508
    .local v0, "result":I
    return v0
.end method

.method public static reverseShort(S)S
    .locals 2
    .param p0, "s"    # S

    .prologue
    .line 519
    .line 520
    invoke-static {p0}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(S)[B

    move-result-object v1

    .line 519
    invoke-static {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->hBytesToShort([B)S

    move-result v0

    .line 521
    .local v0, "result":S
    return v0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 336
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 339
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stringToBytes(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 305
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toHH(I)[B
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 293
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 294
    .local v0, "b":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 295
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 296
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 297
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 298
    return-object v0
.end method

.method public static toHH(S)[B
    .locals 3
    .param p0, "n"    # S

    .prologue
    .line 279
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 280
    .local v0, "b":[B
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 281
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 282
    return-object v0
.end method

.method public static toHL(I)[B
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 227
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 228
    .local v0, "b":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 229
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 230
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    return-object v0
.end method

.method private static toLH(F)[B
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 258
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toLH(I)[B
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 218
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 219
    .local v0, "b":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 220
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 223
    return-object v0
.end method

.method public static toLH(J)[B
    .locals 8
    .param p0, "n"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 242
    new-array v0, v6, [B

    .line 243
    .local v0, "b":[B
    const/4 v1, 0x0

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 244
    const/4 v1, 0x1

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 245
    const/4 v1, 0x2

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 246
    const/4 v1, 0x3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 247
    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 248
    const/4 v1, 0x5

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 249
    const/4 v1, 0x6

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 250
    const/4 v1, 0x7

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 251
    return-object v0
.end method

.method public static toLH(S)[B
    .locals 3
    .param p0, "n"    # S

    .prologue
    .line 265
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 266
    .local v0, "b":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 267
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 268
    return-object v0
.end method

.method private static toStr([BI)Ljava/lang/String;
    .locals 4
    .param p0, "valArr"    # [B
    .param p1, "maxLen"    # I

    .prologue
    const/4 v3, 0x0

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "index":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    if-ge v0, p1, :cond_0

    .line 171
    aget-byte v2, p0, v0

    if-nez v2, :cond_1

    .line 176
    :cond_0
    new-array v1, v0, [B

    .line 177
    .local v1, "temp":[B
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 174
    .end local v1    # "temp":[B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBuffer()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 205
    .local v1, "temp":[B
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    new-array v0, v2, [B

    .line 206
    .local v0, "buf":[B
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    return-object v0
.end method

.method public putByte(B)V
    .locals 1
    .param p1, "n"    # B

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 98
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 100
    return-void
.end method

.method public putBytes([B)V
    .locals 2
    .param p1, "n"    # [B

    .prologue
    .line 108
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 109
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 111
    return-void
.end method

.method public putFloat(F)V
    .locals 2
    .param p1, "n"    # F

    .prologue
    .line 119
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 120
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 122
    return-void
.end method

.method public putInt(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 63
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 64
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 66
    return-void
.end method

.method public putInt_(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 74
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 75
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 78
    return-void
.end method

.method public putLong(Ljava/lang/Long;)V
    .locals 4
    .param p1, "n"    # Ljava/lang/Long;

    .prologue
    .line 86
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 87
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 88
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 89
    return-void
.end method

.method public putShort(Ljava/lang/Short;)V
    .locals 2
    .param p1, "nData"    # Ljava/lang/Short;

    .prologue
    .line 187
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 188
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->toLH(S)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 190
    return-void
.end method

.method public putShort_(Ljava/lang/Short;)V
    .locals 2
    .param p1, "nData"    # Ljava/lang/Short;

    .prologue
    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 199
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->toHH(S)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 200
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 201
    return-void
.end method

.method public putString(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 143
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    :cond_0
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ubtechinc/developer/DeveloperPacketData;->putShort(Ljava/lang/Short;)V

    .line 160
    :goto_0
    return v2

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v3}, Lcom/ubtechinc/developer/DeveloperPacketData;->stringToBytes(Ljava/lang/String;I)[B

    move-result-object v0

    .line 149
    .local v0, "buf":[B
    if-eqz v0, :cond_2

    .line 150
    array-length v1, v0

    .line 151
    .local v1, "nLen":I
    int-to-short v2, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ubtechinc/developer/DeveloperPacketData;->putShort(Ljava/lang/Short;)V

    .line 153
    invoke-direct {p0, v1}, Lcom/ubtechinc/developer/DeveloperPacketData;->Allocate(I)Z

    .line 154
    iget-object v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 155
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ubtechinc/developer/DeveloperPacketData;->nPosition:I

    .line 157
    add-int/lit8 v2, v1, 0x2

    goto :goto_0

    .line 159
    .end local v1    # "nLen":I
    :cond_2
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ubtechinc/developer/DeveloperPacketData;->putShort(Ljava/lang/Short;)V

    goto :goto_0
.end method
