.class Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 827
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1602(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
