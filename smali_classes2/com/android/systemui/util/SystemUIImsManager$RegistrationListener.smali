.class Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "SystemUIImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SystemUIImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationListener"
.end annotation


# instance fields
.field private mSlotId:I

.field final synthetic this$0:Lcom/android/systemui/util/SystemUIImsManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;Lcom/android/systemui/util/SystemUIImsManager$1;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;-><init>(Lcom/android/systemui/util/SystemUIImsManager;)V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p2

    const-string v0, "RegistrationListener onDeregistered["

    const-string v1, "SystemUIImsManager"

    const/16 v2, 0xf

    if-ne p2, v2, :cond_0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : TYPE_MOBILE_EMERGENCY "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p2, "mmtel"

    .line 297
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 298
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 299
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 300
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : voice profiles are Disconnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 304
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : VoWifi is Disconnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : non- MMTEL_VOICE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SystemUIImsManager;->fireImsRegStateChangedCallback(I)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const-string v1, "RegistrationListener onRegistered["

    const-string v2, "SystemUIImsManager"

    const/16 v3, 0xf

    if-ne v0, v3, :cond_0

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : TYPE_MOBILE_EMERGENCY "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "mmtel"

    .line 259
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 260
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v5, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    invoke-static {v0, v5}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    invoke-static {v0, v4}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : MMTEL_VOICE. But, NetworkType is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    invoke-static {v0, v5}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : VoWifi is Connected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 275
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    invoke-static {v0, v4}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : VoWifi is Disconnected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : non- MMTEL_VOICE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_1
    const-class v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->getOperatorInfraMediator()Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_WIFI_CALLING_ICON_AT_WIFI_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v5, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v3, v5, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] : mEpdgRegState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$800(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SystemUIImsManager;->fireImsRegStateChangedCallback(I)V

    return-void
.end method

.method public setSlotId(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    return-void
.end method
