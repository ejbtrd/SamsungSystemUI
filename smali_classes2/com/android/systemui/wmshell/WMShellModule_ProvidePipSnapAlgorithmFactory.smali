.class public final Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;
.super Ljava/lang/Object;
.source "WMShellModule_ProvidePipSnapAlgorithmFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;->access$000()Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellModule;->providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipSnapAlgorithm;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;->providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipSnapAlgorithmFactory;->get()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object p0

    return-object p0
.end method
