.class Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->init()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->init()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->init()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->init()V

    return-void
.end method
