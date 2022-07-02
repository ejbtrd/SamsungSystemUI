.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SoundModeTileVolumeIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 520
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->access$100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
