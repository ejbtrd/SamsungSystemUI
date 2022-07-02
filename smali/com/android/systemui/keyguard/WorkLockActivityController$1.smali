.class Lcom/android/systemui/keyguard/WorkLockActivityController$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "WorkLockActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WorkLockActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskProfileLocked(II)V
    .locals 1

    .line 141
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguard/WorkLockActivityController;->access$000(Lcom/android/systemui/keyguard/WorkLockActivityController;II)V

    :goto_0
    return-void
.end method
