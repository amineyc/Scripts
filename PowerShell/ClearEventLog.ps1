#Clear log

Get-EventLog –LogName * -PipelineVariable log
Clear-EventLog -LogName Application
Clear-EventLog -LogName System
Clear-EventLog -LogName security
Get-EventLog –LogName * -PipelineVariable log