.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;
.super Ljava/lang/Object;
.source "QQMusicSip.java"


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;->key:Ljava/lang/String;

    .line 13
    return-void
.end method
