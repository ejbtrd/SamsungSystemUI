.class public final synthetic Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

.field public final synthetic f$1:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:J

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Rect;

    iput-wide p4, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$3:J

    iput p6, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Rect;

    iget-wide v3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$3:J

    iget v5, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;->f$4:F

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/draganddrop/DragTargetView;->$r8$lambda$yKD2ScCCaOY2ABTVo7yB8ApKpFs(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V

    return-void
.end method
