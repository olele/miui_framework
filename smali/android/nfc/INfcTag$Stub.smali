.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final TRANSACTION_canMakeReadOnly:I = 0x11

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_formatNdef:I = 0xc

.field static final TRANSACTION_getExtendedLengthApdusSupported:I = 0x13

.field static final TRANSACTION_getMaxTransceiveLength:I = 0x12

.field static final TRANSACTION_getTechList:I = 0x4

.field static final TRANSACTION_getTimeout:I = 0xf

.field static final TRANSACTION_isNdef:I = 0x5

.field static final TRANSACTION_isPresent:I = 0x6

.field static final TRANSACTION_ndefIsWritable:I = 0xb

.field static final TRANSACTION_ndefMakeReadOnly:I = 0xa

.field static final TRANSACTION_ndefRead:I = 0x8

.field static final TRANSACTION_ndefWrite:I = 0x9

.field static final TRANSACTION_reconnect:I = 0x3

.field static final TRANSACTION_rediscover:I = 0xd

.field static final TRANSACTION_resetTimeouts:I = 0x10

.field static final TRANSACTION_setTimeout:I = 0xe

.field static final TRANSACTION_transceive:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.INfcTag"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcTag$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
    .registers 3
    .parameter "obj"

    .prologue
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v1, "android.nfc.INfcTag"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/nfc/INfcTag;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/nfc/INfcTag;

    goto :goto_3

    :cond_13
    new-instance v0, Landroid/nfc/INfcTag$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_1e4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    :sswitch_a
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->close(I)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_24
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->connect(II)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_3c
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_50
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    move-result-object v3

    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:[I
    :sswitch_64
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_77

    move v4, v5

    :cond_77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_7b
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8e

    move v4, v5

    :cond_8e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_93
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b8

    move v2, v5

    .local v2, _arg2:Z
    :goto_a7
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v3

    .local v3, _result:Landroid/nfc/TransceiveResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_ba

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Landroid/nfc/TransceiveResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .end local v2           #_arg2:Z
    .end local v3           #_result:Landroid/nfc/TransceiveResult;
    :cond_b8
    move v2, v4

    goto :goto_a7

    .restart local v2       #_arg2:Z
    .restart local v3       #_result:Landroid/nfc/TransceiveResult;
    :cond_ba
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:Z
    .end local v3           #_result:Landroid/nfc/TransceiveResult;
    :sswitch_bf
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v3

    .local v3, _result:Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d9

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    :cond_d9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/nfc/NdefMessage;
    :sswitch_de
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_101

    sget-object v4, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .local v1, _arg1:Landroid/nfc/NdefMessage;
    :goto_f5
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg1:Landroid/nfc/NdefMessage;
    .end local v3           #_result:I
    :cond_101
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/nfc/NdefMessage;
    goto :goto_f5

    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/nfc/NdefMessage;
    :sswitch_103
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_118
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_12b

    move v4, v5

    :cond_12b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_130
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v3           #_result:I
    :sswitch_149
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v3

    .local v3, _result:Landroid/nfc/Tag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_163

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    :cond_163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/nfc/Tag;
    :sswitch_168
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->setTimeout(II)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_181
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTimeout(I)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_196
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetTimeouts()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_1a3
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->canMakeReadOnly(I)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1b6

    move v4, v5

    :cond_1b6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_1bb
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getMaxTransceiveLength(I)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_1d0
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->getExtendedLengthApdusSupported()Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1df

    move v4, v5

    :cond_1df
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_data_1e4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_50
        0x5 -> :sswitch_64
        0x6 -> :sswitch_7b
        0x7 -> :sswitch_93
        0x8 -> :sswitch_bf
        0x9 -> :sswitch_de
        0xa -> :sswitch_103
        0xb -> :sswitch_118
        0xc -> :sswitch_130
        0xd -> :sswitch_149
        0xe -> :sswitch_168
        0xf -> :sswitch_181
        0x10 -> :sswitch_196
        0x11 -> :sswitch_1a3
        0x12 -> :sswitch_1bb
        0x13 -> :sswitch_1d0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
