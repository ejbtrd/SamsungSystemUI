.class final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;
.super Ljava/lang/Object;
.source "KeyguardSysDumpTrigger.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->sendIntent(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentUser:I

.field final synthetic $reason:I

.field final synthetic $timestamp:J

.field final synthetic $userUnlocked:Z

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(IZLcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$currentUser:I

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$userUnlocked:Z

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    iput-wide p5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 176
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$currentUser:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$userUnlocked:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v2, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getContext$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/content/Context;

    move-result-object v0

    .line 179
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    iget-wide v5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$timestamp:J

    const-string v7, "com.salab.issuetracker"

    .line 180
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v7, -0x7d

    const-string v8, "ERRCODE"

    .line 181
    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getTriggerMsg(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ERRNAME"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "ERRPKG"

    const-string v8, "com.android.systemui"

    .line 183
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-static {v3, v4, v5, v6}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getTriggerMsgDetail(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ERRMSG"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getDumpPath$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EXTLOG"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 178
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getContext$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "dump in progress"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$setDumpPath$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$setViewCount$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;J)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 194
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 195
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getSYSDUMP_COMPONENT_NAME$cp()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 196
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "occluded"

    .line 197
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getContext$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    .line 202
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getContext$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 203
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getContext$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 204
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 201
    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "KeyguardSysDumpTrigger"

    const-string/jumbo v1, "unable to start activity"

    .line 206
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method
