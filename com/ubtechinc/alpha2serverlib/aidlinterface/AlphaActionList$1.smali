.class final Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList$1;
.super Ljava/lang/Object;
.source "AlphaActionList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;
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
        "Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;

    invoke-direct {v0, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    new-array v0, p1, [Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList$1;->newArray(I)[Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;

    move-result-object v0

    return-object v0
.end method
