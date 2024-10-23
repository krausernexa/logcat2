.class public Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;
.super Ljava/lang/Object;
.source "AlphaActionList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acitonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2serverlib/aidlinterface/ActionInfoList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList$1;

    invoke-direct {v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList$1;-><init>()V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->acitonList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->acitonList:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->acitonList:Ljava/util/List;

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ActionInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getAcitonInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2serverlib/aidlinterface/ActionInfoList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->acitonList:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->acitonList:Ljava/util/List;

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ActionInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 69
    return-void
.end method

.method public setAcitonInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alpha2serverlib/aidlinterface/ActionInfoList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "acitonInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alpha2serverlib/aidlinterface/ActionInfoList;>;"
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->acitonList:Ljava/util/List;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/AlphaActionList;->acitonList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    return-void
.end method
