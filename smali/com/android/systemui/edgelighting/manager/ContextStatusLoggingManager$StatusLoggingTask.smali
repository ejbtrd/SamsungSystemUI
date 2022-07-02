.class Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;
.super Landroid/os/AsyncTask;
.source "ContextStatusLoggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusLoggingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTaskContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    return-void
.end method

.method private sendEdgeLightingSettingsLogging(Landroid/content/Context;)V
    .locals 6

    .line 88
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    const-string v4, "EL01"

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    const-string v5, "1000"

    invoke-static {v3, v2, v4, v1, v5}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$200(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    goto :goto_0

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    const-string v5, "0"

    invoke-static {v3, v2, v4, v1, v5}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$200(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 99
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-static {v4, p1, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$300(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_1
    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingShowCondition(Landroid/content/ContentResolver;)I

    move-result v3

    const-string v4, "EL02"

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    const-string v3, "Off"

    invoke-static {v0, v2, v4, v3, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$200(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    const-string v3, "Always"

    invoke-static {v0, v2, v4, v3, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$200(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne v3, v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    const-string v3, "When screen is on"

    invoke-static {v0, v2, v4, v3, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$200(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    const-string v3, "When screen is off"

    invoke-static {v0, v2, v4, v3, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$200(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 127
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$300(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;Landroid/content/ContentValues;)V

    nop

    :cond_5
    return-void
.end method

.method private sendEdgeLightingSupportAppsLogging(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 76
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->sendEdgeLightingSettingsLogging(Landroid/content/Context;)V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->sendEdgeLightingSupportAppsLogging(Landroid/content/Context;)V

    .line 78
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$000(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->access$100(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextStatusLoggingManager.doInBackground() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
