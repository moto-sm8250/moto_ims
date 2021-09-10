.class Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionListener"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcom/qualcomm/ims/vt/Camera2;


# direct methods
.method public constructor <init>(Lcom/qualcomm/ims/vt/Camera2;I)V
    .locals 0
    .param p2, "v"    # I

    .line 933
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 934
    iput p2, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    .line 935
    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->access$602(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 975
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$700(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->access$1200(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$300(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 980
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigureFailed: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->access$502(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 958
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->access$602(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 959
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$700(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->access$1100(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$300(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 964
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigured: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->access$502(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 941
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->access$602(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 943
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$700(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->access$800(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->access$902(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 949
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$1000(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 952
    :cond_1
    :goto_0
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReady: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    return-void
.end method
