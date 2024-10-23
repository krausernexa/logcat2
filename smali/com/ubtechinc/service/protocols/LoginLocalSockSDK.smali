.class public Lcom/ubtechinc/service/protocols/LoginLocalSockSDK;
.super Ljava/lang/Object;
.source "LoginLocalSockSDK.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field serialNumber:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field userID:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/LoginLocalSockSDK;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/LoginLocalSockSDK;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/LoginLocalSockSDK;->serialNumber:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/LoginLocalSockSDK;->userID:Ljava/lang/String;

    .line 30
    return-void
.end method
