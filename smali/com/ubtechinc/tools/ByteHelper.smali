.class public Lcom/ubtechinc/tools/ByteHelper;
.super Ljava/lang/Object;
.source "ByteHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2int([B)I
    .locals 8
    .param p0, "res"    # [B

    .prologue
    const v7, 0xff00

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "targets":I
    aget-byte v2, p0, v3

    and-int/lit16 v0, v2, 0xff

    .line 45
    aget-byte v2, p0, v4

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v7

    or-int/2addr v0, v2

    .line 46
    aget-byte v2, p0, v5

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 47
    aget-byte v2, p0, v6

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 48
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(I)V

    .line 50
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, v4

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    or-int/2addr v2, v3

    aget-byte v3, p0, v5

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, p0, v6

    shl-int/lit8 v3, v3, 0x18

    or-int v1, v2, v3

    .line 52
    .local v1, "x":I
    return v1
.end method

.method public static byte2int2([B)I
    .locals 4
    .param p0, "res"    # [B

    .prologue
    .line 75
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 76
    .local v0, "x":I
    return v0
.end method

.method public static int2byte(I)[B
    .locals 4
    .param p0, "res"    # I

    .prologue
    .line 21
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 23
    .local v1, "targets":[B
    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 24
    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 25
    const/4 v2, 0x2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 26
    const/4 v2, 0x3

    ushr-int/lit8 v3, p0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 28
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-byte v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(I)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-object v1
.end method

.method public static int2byte2(I)[B
    .locals 3
    .param p0, "res"    # I

    .prologue
    .line 62
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 63
    .local v0, "targets":[B
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 64
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 65
    return-object v0
.end method
