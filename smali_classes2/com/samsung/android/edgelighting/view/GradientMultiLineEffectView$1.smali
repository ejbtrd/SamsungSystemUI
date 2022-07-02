.class Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$1;
.super Ljava/lang/Object;
.source "GradientMultiLineEffectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->resetImageDrawable()V

    return-void
.end method
