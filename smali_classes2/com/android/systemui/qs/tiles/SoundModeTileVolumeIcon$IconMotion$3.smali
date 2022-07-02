.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SoundModeTileVolumeIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

.field final synthetic val$splash:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;Landroid/view/View;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;->val$splash:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 717
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;->val$splash:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;->val$splash:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startSplashAnimation(Landroid/view/View;)V

    return-void
.end method
