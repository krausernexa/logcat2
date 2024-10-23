.class public Lcom/ubtechinc/developer/DeveloperAppData;
.super Ljava/lang/Object;
.source "DeveloperAppData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cmd:I

.field private datas:[B

.field private packageName:Ljava/lang/String;


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
    .line 33
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperAppData;->cmd:I

    return v0
.end method

.method public getDatas()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperAppData;->datas:[B

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ubtechinc/developer/DeveloperAppData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperAppData;->cmd:I

    .line 38
    return-void
.end method

.method public setDatas([B)V
    .locals 0
    .param p1, "datas"    # [B

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ubtechinc/developer/DeveloperAppData;->datas:[B

    .line 46
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ubtechinc/developer/DeveloperAppData;->packageName:Ljava/lang/String;

    .line 54
    return-void
.end method
