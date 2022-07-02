.class Lcom/android/systemui/statusbar/phone/StatusBar$10;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 1382
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCarrierInformationViews()V
    .locals 0

    .line 1386
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateCarrierInformationViews()V

    .line 1387
    const-class p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierSettingListener()V

    return-void
.end method
