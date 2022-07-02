.class Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;
.super Landroid/os/AsyncTask;
.source "EdgeLightingSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAppNameListAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 620
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 623
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->access$200(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 625
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doInBackground() / Returned ArrayList is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 620
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 632
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 633
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->access$400(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v3, -0xb37941

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
