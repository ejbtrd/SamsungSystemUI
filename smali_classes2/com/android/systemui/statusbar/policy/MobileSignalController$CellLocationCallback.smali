.class public Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;
.super Landroid/telephony/TelephonyCallback;
.source "MobileSignalController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CellLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellLocationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 1625
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 10

    .line 1629
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "onCellLocationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_MULTI_LINE_PANEL_CARRIER_LABEL_VIEW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-interface {p1, v0, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1631
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/TelephonyDisplayInfo;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isGSM(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1632
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowSpn()Z

    move-result v5

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1633
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastSpn()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1634
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastDataSpn()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1635
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowPlmn()Z

    move-result v8

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1636
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object v9

    .line 1632
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1638
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISPLAY_CBCH50:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v3, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1639
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/TelephonyDisplayInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isGSM(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1640
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v0

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1642
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
