.class Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar$1;
.super Ljava/lang/Object;
.source "SamsungPluginNavigationBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->access$002(Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;Z)Z

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_KEYGUARD_SHOWING_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method
