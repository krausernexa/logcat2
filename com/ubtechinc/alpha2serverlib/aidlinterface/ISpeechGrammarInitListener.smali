.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;
.super Ljava/lang/Object;
.source "ISpeechGrammarInitListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract speechGrammarInitCallback(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
