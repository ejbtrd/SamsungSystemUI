.class Lcom/android/systemui/statusbar/phone/StatusBar$8;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$8$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/OverlayPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/plugins/OverlayPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public static synthetic $r8$lambda$PN1P1SGeS_wPpslD1sgdDF1ewxE(Lcom/android/systemui/statusbar/phone/StatusBar$8;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$8;->lambda$onPluginConnected$0(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXkh2LSiWNJpiLGbanuIC-kFtxc(Lcom/android/systemui/statusbar/phone/StatusBar$8;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$8;->lambda$onPluginDisconnected$1(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 1298
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mOverlays:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBar$8;)Landroid/util/ArraySet;
    .locals 0

    .line 1298
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mOverlays:Landroid/util/ArraySet;

    return-object p0
.end method

.method private synthetic lambda$onPluginConnected$0(Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 3

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1305
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$8$Callback;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$8$Callback;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$8;Lcom/android/systemui/plugins/OverlayPlugin;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1306
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p0

    .line 1304
    invoke-interface {p1, v0, v1, v2, p0}, Lcom/android/systemui/plugins/OverlayPlugin;->setup(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/plugins/OverlayPlugin$Callback;Lcom/android/systemui/plugins/statusbar/DozeParameters;)V

    return-void
.end method

.method private synthetic lambda$onPluginDisconnected$1(Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1313
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mOverlays:Landroid/util/ArraySet;

    .line 1314
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
    .locals 1

    .line 1303
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$8$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$8;Lcom/android/systemui/plugins/OverlayPlugin;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 1298
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$8;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$8$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$8$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$8;Lcom/android/systemui/plugins/OverlayPlugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 1298
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$8;->onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method
