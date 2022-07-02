.class public final synthetic Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    check-cast p1, Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->$r8$lambda$fUmkbKA0pOhvhm_vmmd4UIlj5k8(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;)V

    return-void
.end method
