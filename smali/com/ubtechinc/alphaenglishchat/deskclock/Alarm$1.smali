.class final Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$1;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 39
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    invoke-direct {v0, p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    new-array v0, p1, [Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$1;->newArray(I)[Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    move-result-object v0

    return-object v0
.end method
