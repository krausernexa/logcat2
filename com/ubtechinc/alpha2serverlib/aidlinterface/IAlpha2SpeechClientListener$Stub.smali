.class public abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;
.super Landroid/os/Binder;
.source "IAlpha2SpeechClientListener.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2SpeechClientListener"

.field static final TRANSACTION_onServerCallBack:I = 0x1

.field static final TRANSACTION_onServerPlayEnd:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2SpeechClientListener"

    invoke-virtual {p0, p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2SpeechClientListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 48
    :sswitch_0
    const-string v2, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2SpeechClientListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v2, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2SpeechClientListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;->onServerCallBack(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2SpeechClientListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 65
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;->onServerPlayEnd(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method