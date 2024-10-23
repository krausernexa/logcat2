.class public Lcom/ubtech/alpha2/core/unzip/Unzip;
.super Ljava/lang/Object;
.source "Unzip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;
    }
.end annotation


# static fields
.field private static final buffer:I = 0x800


# instance fields
.field private listener:Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ubtech/alpha2/core/unzip/Unzip;->listener:Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/ubtech/alpha2/core/unzip/Unzip;)Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/unzip/Unzip;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ubtech/alpha2/core/unzip/Unzip;->listener:Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Lcom/ubtech/alpha2/core/unzip/Unzip;

    new-instance v1, Lcom/ubtech/alpha2/core/unzip/Unzip$2;

    invoke-direct {v1}, Lcom/ubtech/alpha2/core/unzip/Unzip$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/ubtech/alpha2/core/unzip/Unzip;-><init>(Lcom/ubtech/alpha2/core/unzip/Unzip$UnzipListener;)V

    const-string v1, "\u8baf\u98de\u821e\u8e481.zip"

    const-string v2, "test"

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/ubtech/alpha2/core/unzip/Unzip;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 148
    :cond_0
    return-void
.end method

.method public unZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "des"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lcom/ubtech/alpha2/core/unzip/Unzip$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ubtech/alpha2/core/unzip/Unzip$1;-><init>(Lcom/ubtech/alpha2/core/unzip/Unzip;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/unzip/Unzip$1;->start()V

    .line 133
    return-void
.end method
