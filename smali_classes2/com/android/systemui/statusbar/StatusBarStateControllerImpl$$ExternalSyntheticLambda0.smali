.class public final synthetic Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->$r8$lambda$8Mr3PfyNv_ThsaFyuExmoLlQ94c(Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;Z)V

    return-void
.end method
