.class Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;
.super Landroid/os/Handler;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 754
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1200(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;[F)V

    :goto_0
    return-void
.end method
