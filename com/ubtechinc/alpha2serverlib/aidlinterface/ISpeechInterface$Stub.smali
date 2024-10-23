.class public abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;
.super Landroid/os/Binder;
.source "ISpeechInterface.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

.field static final TRANSACTION_initSpeechGrammar:I = 0xa

.field static final TRANSACTION_onEnglishUnderstand:I = 0x10

.field static final TRANSACTION_onPlay:I = 0x5

.field static final TRANSACTION_onPlayHigh:I = 0x6

.field static final TRANSACTION_onSpeech:I = 0x3

.field static final TRANSACTION_onStopPlay:I = 0x7

.field static final TRANSACTION_onStopSpeech:I = 0x4

.field static final TRANSACTION_onTextUnderstand:I = 0x9

.field static final TRANSACTION_registerSpeechCallBackListener:I = 0x1

.field static final TRANSACTION_setEnglishOfflineListener:I = 0x11

.field static final TRANSACTION_setRecognizedLanguage:I = 0xe

.field static final TRANSACTION_setSelfInterrupt:I = 0x12

.field static final TRANSACTION_setStartEarLed:I = 0x13

.field static final TRANSACTION_setVoiceName:I = 0xf

.field static final TRANSACTION_setWakeState:I = 0x8

.field static final TRANSACTION_startSpeechGrammar:I = 0xb

.field static final TRANSACTION_startSpeechNoWakeup:I = 0x14

.field static final TRANSACTION_stopSpeechAndEnterIdleMode:I = 0xd

.field static final TRANSACTION_stopSpeechGrammar:I = 0xc

.field static final TRANSACTION_unRegisterSpeechCallBackListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p0, p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;
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
    const-string v1, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->registerSpeechCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)I

    move-result v4

    .line 57
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 66
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->unRegisterSpeechCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)I

    move-result v4

    .line 67
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->onSpeech(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->onStopSpeech(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    :sswitch_5
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 97
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->onPlay(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 108
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :sswitch_6
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->onPlayHigh(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 123
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :sswitch_7
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->onStopPlay(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    :sswitch_8
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    .line 135
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->setWakeState(Z)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":Z
    :sswitch_9
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;

    move-result-object v1

    .line 146
    .local v1, "_arg1":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;
    invoke-virtual {p0, v0, v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->onTextUnderstand(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;
    :sswitch_a
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;

    move-result-object v1

    .line 157
    .local v1, "_arg1":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;
    invoke-virtual {p0, v0, v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->initSpeechGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;
    :sswitch_b
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->startSpeechGrammar(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener;
    :sswitch_c
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->stopSpeechGrammar()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 179
    :sswitch_d
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->stopSpeechAndEnterIdleMode()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    :sswitch_e
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->setRecognizedLanguage(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->setVoiceName(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->onEnglishUnderstand(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;
    :sswitch_11
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;

    move-result-object v0

    .line 216
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->setEnglishOfflineListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;
    :sswitch_12
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 225
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->setSelfInterrupt(Z)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 231
    .end local v0    # "_arg0":Z
    :sswitch_13
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->setStartEarLed()V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    :sswitch_14
    const-string v6, "com.ubtechinc.alpha2serverlib.aidlinterface.ISpeechInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;

    move-result-object v0

    .line 241
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->startSpeechNoWakeup(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
