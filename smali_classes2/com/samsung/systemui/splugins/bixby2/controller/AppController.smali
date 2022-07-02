.class public interface abstract Lcom/samsung/systemui/splugins/bixby2/controller/AppController;
.super Ljava/lang/Object;
.source "AppController.java"


# virtual methods
.method public abstract checkSupportMultiWindow(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public abstract openRecentsApp(Landroid/content/Context;)Z
.end method

.method public abstract removeAllTasks(Landroid/content/Context;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract removeFocusedTask(Landroid/content/Context;)Z
.end method

.method public abstract removeNavigationApp(Landroid/os/Bundle;Landroid/content/Context;)I
.end method

.method public abstract removeSearchedTask(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public abstract startMultiWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public abstract startNavigationApp(Landroid/os/Bundle;Landroid/content/Context;)I
.end method
