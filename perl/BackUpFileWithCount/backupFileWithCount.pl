
#!/usr/bin/perl 

#---------------------------------------------------------------------------------------
#This subroutine recursively/incrementally backs up files as per the counter passed.
#That way it retains all the previous backups
#Usage :  backupFile(file_name)
#This will create a backup : file_name.1 .
#Subsequent calls will create backups file_name.2 , file_name.3 etc
#---------------------------------------------------------------------------------------

sub backupFile {
   my $file=shift;
   my $initIndex=1;
   my $fileIndex=backupFile($file,$initIndex);
  `mv $file $file.$fileIndex`;
}

sub getCount{
  my $file =shift;
  my $i    =shift;
  my $bkpFile = $file.".".$i;
  if (-e $bkpFile) {
    $i++;
    return backupFile($file,$i);
  }
  else {
    return $i;
  }
}