.class Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView$3;
.super Landroid/database/ContentObserver;
.source "AbsEdgeLightingMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->registerOneHandSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView$3;->this$0:Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 383
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 385
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView$3;->this$0:Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
