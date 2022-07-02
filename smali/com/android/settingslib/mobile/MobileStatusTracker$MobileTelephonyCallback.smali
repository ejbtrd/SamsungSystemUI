.class public Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "MobileStatusTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$DataActivityListener;
.implements Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/mobile/MobileStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveDataSubscriptionIdChanged: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$500(Lcom/android/settingslib/mobile/MobileStatusTracker;)V

    .line 235
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 236
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 235
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->callState:I

    .line 258
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 259
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 258
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarrierNetworkChange: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    .line 225
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 226
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 225
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0, p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$400(Lcom/android/settingslib/mobile/MobileStatusTracker;I)V

    .line 215
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 216
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 215
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p2

    iput p1, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    .line 189
    iget-object p2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p2

    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object v1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 190
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    const/4 v1, 0x1

    .line 189
    invoke-interface {p2, v1, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 200
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 202
    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    if-nez p1, :cond_2

    .line 203
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "re-register telephonyCallback"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    .line 205
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    :cond_2
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfoChanged: telephonyDisplayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 243
    invoke-static {p1, v2}, Lcom/android/settingslib/mobile/MobileStatusTracker;->getDisplayInfoDescription(Landroid/telephony/TelephonyDisplayInfo;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 247
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 248
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 247
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p1, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dataState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 178
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 179
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 178
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_0

    .line 162
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getVendorLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    .line 166
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 167
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 166
    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method
