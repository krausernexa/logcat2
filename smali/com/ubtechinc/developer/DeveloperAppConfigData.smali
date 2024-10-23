.class public Lcom/ubtechinc/developer/DeveloperAppConfigData;
.super Ljava/lang/Object;
.source "DeveloperAppConfigData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cmd:I

.field private datas:[B

.field private packageName:Ljava/lang/String;

.field private tags:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmd()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->cmd:I

    return v0
.end method

.method public getDatas()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->datas:[B

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->tags:[B

    return-object v0
.end method

.method public setCmd(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->cmd:I

    .line 49
    return-void
.end method

.method public setDatas([B)V
    .locals 0
    .param p1, "datas"    # [B

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->datas:[B

    .line 57
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->packageName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTags([B)V
    .locals 0
    .param p1, "tags"    # [B

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ubtechinc/developer/DeveloperAppConfigData;->tags:[B

    .line 41
    return-void
.end method
