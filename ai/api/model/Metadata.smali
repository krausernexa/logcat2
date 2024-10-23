.class public Lai/api/model/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private intentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intentId"
    .end annotation
.end field

.field private intentName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intentName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lai/api/model/Metadata;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lai/api/model/Metadata;->intentName:Ljava/lang/String;

    return-object v0
.end method

.method public setIntentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lai/api/model/Metadata;->intentId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setIntentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lai/api/model/Metadata;->intentName:Ljava/lang/String;

    .line 51
    return-void
.end method
