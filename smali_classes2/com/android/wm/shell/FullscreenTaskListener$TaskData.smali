.class Lcom/android/wm/shell/FullscreenTaskListener$TaskData;
.super Ljava/lang/Object;
.source "FullscreenTaskListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/FullscreenTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskData"
.end annotation


# instance fields
.field public final positionInParent:Landroid/graphics/Point;

.field public final surface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/wm/shell/FullscreenTaskListener$TaskData;->surface:Landroid/view/SurfaceControl;

    .line 151
    iput-object p2, p0, Lcom/android/wm/shell/FullscreenTaskListener$TaskData;->positionInParent:Landroid/graphics/Point;

    return-void
.end method
