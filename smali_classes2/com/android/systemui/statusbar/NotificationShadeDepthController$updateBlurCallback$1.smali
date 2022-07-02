.class final Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dump/DumpManager;Landroid/content/res/Resources;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 6

    .line 210
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setUpdateScheduled$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeAnimation()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BlurUtils;->getMinBlurRadius()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BlurUtils;->getMaxBlurRadius()I

    move-result v1

    .line 211
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 215
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getInterpolatedBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)I

    move-result p1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getQsPanelExpansion()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getShadeExpansion$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getTransitionToFullShadeProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getWakeAndUnlockBlurRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBlursDisabledForAppLaunch()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    float-to-int p1, p1

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, p2

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(I)F

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result v1

    if-nez v1, :cond_3

    move p1, p2

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isReduceTransparencyEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    move p1, p2

    :cond_4
    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBrightnessMirrorSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRatio()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBlursDisabledForAppLaunch()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, p2

    :goto_1
    const-wide/16 v3, 0x1000

    const-string/jumbo v5, "shade_blur_radius"

    .line 249
    invoke-static {v3, v4, v5, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 250
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurRoot$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    :cond_7
    invoke-virtual {v3, v4, p1, v1}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    if-eqz v0, :cond_c

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_8

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardUpdateMonitor$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 272
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v2, p2

    :goto_3
    if-eqz v2, :cond_a

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getWindowDimAmount$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getNotificationShadeWindowController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackgroundBlurRadius(I)V

    .line 275
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$applyWallpaperBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V

    goto :goto_4

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getWallpaperDimAmount$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$applyWallpaperBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V

    .line 278
    :cond_b
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getNotificationShadeWindowController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackgroundBlurRadius(I)V

    .line 279
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setWindowDimAmount$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V

    .line 281
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "blur = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " shouldUseBlurFilter = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DepthController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 283
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getNotificationShadeWindowController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackgroundBlurRadius(I)V

    :goto_5
    return-void
.end method
