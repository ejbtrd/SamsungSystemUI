.class final Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"

# interfaces
.implements Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;
    }
.end annotation


# static fields
.field public static final DISABLE_SPEG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerDragging:Z

.field private final mDockedStackExistsListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mPackagesShownInSession:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$KTrEcdgHgiKGr1Gau2J65S55ubk(Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pgPaKEaDtT6OQ1DB-iZMKllA5M8(Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.samsung.speg.disable"

    .line 115
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->DISABLE_SPEG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    .line 60
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    .line 63
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mDockedStackExistsListener:Ljava/util/function/Consumer;

    .line 89
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 91
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private debounce(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.android.systemui"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 195
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_0
    return-void
.end method

.method private postTimeout()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showPending()V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    .line 156
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 158
    iget v5, v2, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mTaskId:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 161
    invoke-virtual {v4, v1, v1}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 162
    iget v5, v2, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mReason:I

    const-string v6, "extra_forced_resizeable_reason"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget v2, v2, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mReason:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    const/high16 v2, 0x40000

    .line 166
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method


# virtual methods
.method activityDismissingSplitScreen()V
    .locals 2

    .line 137
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->dock_non_resizeble_failed_to_dock_text:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 140
    sget-boolean p0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p0, :cond_0

    const-string p0, "1005"

    const-string v0, "Switch to MW-incompatible app"

    .line 141
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method activityForcedResizable(Ljava/lang/String;II)V
    .locals 1

    .line 119
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->debounce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->DISABLE_SPEG:Z

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;-><init>(Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;II)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;-><init>(Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;II)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->postTimeout()V

    return-void
.end method

.method activityLaunchOnSecondaryDisplayFailed()V
    .locals 2

    .line 148
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->activity_launch_on_secondary_display_failed_text:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method onAppTransitionFinished()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mDividerDragging:Z

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->showPending()V

    :cond_0
    return-void
.end method

.method public onDraggingEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mDividerDragging:Z

    .line 103
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method

.method public onDraggingStart()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mDividerDragging:Z

    .line 97
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
