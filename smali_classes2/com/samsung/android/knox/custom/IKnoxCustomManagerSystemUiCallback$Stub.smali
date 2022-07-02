.class public abstract Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.super Landroid/os/Binder;
.source "IKnoxCustomManagerSystemUiCallback.java"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    .line 84
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_a

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 293
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    .line 296
    :cond_0
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHardKeyIntentState(Z)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 284
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 287
    :cond_1
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtonUsers(Z)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 275
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v0

    .line 278
    :cond_2
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarHidden(Z)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 266
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    .line 269
    :cond_3
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setVolumePanelEnabledState(Z)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 257
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v2, v0

    .line 260
    :cond_4
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setChargerConnectionSoundEnabledState(Z)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 248
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimPin(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 239
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v2, v0

    .line 242
    :cond_5
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimOnBootState(Z)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 230
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v2, v0

    .line 233
    :cond_6
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarNotificationsState(Z)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 221
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 224
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHideNotificationMessages(I)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 207
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 210
    sget-object p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 215
    :goto_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 198
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v2, v0

    .line 201
    :cond_8
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 183
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 192
    invoke-interface {p0, p1, p4, v1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarTextInfo(Ljava/lang/String;III)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 174
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v2, v0

    .line 177
    :cond_9
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setScreenOffOnStatusBarDoubleTapState(Z)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 165
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelUnavailableButtons(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 156
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelItems(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 147
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelEditMode(I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 138
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 141
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtons(I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 129
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 132
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenOverrideMode(I)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 120
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 123
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenHiddenItems(I)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 112
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
