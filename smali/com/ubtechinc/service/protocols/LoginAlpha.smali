.class public Lcom/ubtechinc/service/protocols/LoginAlpha;
.super Ljava/lang/Object;
.source "LoginAlpha.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private mStrPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmStrPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/LoginAlpha;->mStrPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setmStrPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrPassword"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/LoginAlpha;->mStrPassword:Ljava/lang/String;

    .line 26
    return-void
.end method
