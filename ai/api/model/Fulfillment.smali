.class public Lai/api/model/Fulfillment;
.super Ljava/lang/Object;
.source "Fulfillment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private speech:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speech"
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
.method public getSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lai/api/model/Fulfillment;->speech:Ljava/lang/String;

    return-object v0
.end method

.method public setSpeech(Ljava/lang/String;)V
    .locals 0
    .param p1, "speech"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lai/api/model/Fulfillment;->speech:Ljava/lang/String;

    .line 39
    return-void
.end method
