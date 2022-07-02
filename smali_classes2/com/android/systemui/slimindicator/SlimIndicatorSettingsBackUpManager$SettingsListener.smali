.class Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;
.super Ljava/lang/Object;
.source "SlimIndicatorSettingsBackUpManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListener"
.end annotation


# instance fields
.field private final mSettingsValueList:[Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method public static synthetic $r8$lambda$2o6mm16p_gAR7A0EkhxkYupeOFs(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->lambda$onChanged$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 2

    .line 244
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "icon_blacklist"

    .line 246
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string/jumbo v0, "notification_sort_order"

    .line 247
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    .line 248
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    .line 249
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    .line 250
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix"

    .line 251
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    return-void
.end method

.method private synthetic lambda$onChanged$0()V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->access$300(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener()V
    .locals 2

    .line 255
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 261
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method
